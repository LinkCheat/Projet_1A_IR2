from django.core.management.base import BaseCommand
from epresence_api.models import Student
import os
import csv

class Command(BaseCommand):
    help = 'Import student data from a CSV file'

    def handle(self, *args, **options):
        # Assuming the CSV file is in the same directory as this script
        current_dir = os.path.dirname(os.path.abspath(__file__))
        csv_file_path = os.path.join(current_dir, 'students.csv')

        if not os.path.exists(csv_file_path):
            self.stdout.write(self.style.ERROR(f"File not found: {csv_file_path}"))
            return

        students_to_import = []

        with open(csv_file_path, 'r') as file:
            reader = csv.reader(file)
            next(reader)  # Skip the header row
            for row in reader:
                print(f"Importing student: {row}")
                student = Student(
                    student_id=row[0],
                    first_name=row[1],
                    last_name=row[2],
                    field_of_study=row[3]
                )
                students_to_import.append(student)

        Student.objects.bulk_create(students_to_import)
        self.stdout.write(self.style.SUCCESS(f"Successfully imported {len(students_to_import)} students"))
