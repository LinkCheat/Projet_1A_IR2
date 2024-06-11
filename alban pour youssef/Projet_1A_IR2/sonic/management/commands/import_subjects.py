from django.core.management.base import BaseCommand
from epresence_api.models import Subject
import csv, os

class Command(BaseCommand):
    help = 'Import subject data from a CSV file'

    def add_arguments(self, parser):
        parser.add_argument('file_path', type=str, help='The path to the CSV file containing the subject data')

    def handle(self, *args, **options):
        file_path = options['file_path']

        if not os.path.exists(file_path):
            self.stdout.write(self.style.ERROR(f"File not found: {file_path}"))
            return

        subjects_to_import = []

        with open(file_path, 'r') as file:
            reader = csv.reader(file)
            next(reader)  # Skip the header row
            for row in reader:
                print(f"Importing subject: {row}")
                subject = Subject(
                    matiere_id=row[0],
                    nom_matiere=row[1],
                    filiere=row[2],
                    semestre=row[3],
                    coefficient=int(row[4])
                )
                subjects_to_import.append(subject)

        Subject.objects.bulk_create(subjects_to_import)
        self.stdout.write(self.style.SUCCESS(f"Successfully imported {len(subjects_to_import)} subjects"))
