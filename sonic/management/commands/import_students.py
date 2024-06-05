from django.core.management.base import BaseCommand
from epresence_api.models import Student
import csv, os

class Command(BaseCommand):
    help = 'Import student data from a CSV file'

    def add_arguments(self, parser):
        parser.add_argument('file_path', type=str, help='The path to the CSV file containing the student data')

    def handle(self, *args, **options):
        file_path = options['file_path']

        if not os.path.exists(file_path):
            self.stdout.write(self.style.ERROR(f"File not found: {file_path}"))
            return

        students_to_import = []

        with open(file_path, 'r') as file:
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
