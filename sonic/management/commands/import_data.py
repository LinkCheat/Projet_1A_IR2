from django.core.management.base import BaseCommand
from epresence_api.models import Matiere, Student
import os, re

class Command(BaseCommand):
    help = 'Import data from SQL files'

    def handle(self, *args, **options):
        current_dir = os.path.dirname(os.path.abspath(__file__))
        base_dir = os.path.abspath(os.path.join(current_dir, '../../../bdd'))
        
        student_sql_file = os.path.join(base_dir, 'student_table.sql')
        matiere_sql_file = os.path.join(base_dir, 'Matieres_table.sql')

        if not os.path.exists(student_sql_file):
            self.stdout.write(self.style.ERROR(f"File not found: {student_sql_file}"))
            return

        if not os.path.exists(matiere_sql_file):
            self.stdout.write(self.style.ERROR(f"File not found: {matiere_sql_file}"))
            return

        insert_regex = re.compile(r"INSERT INTO `students` .* VALUES \((.*)\);")

        students_to_import = []

        with open(student_sql_file, 'r') as file:
            for line in file:
                match = insert_regex.match(line)
                if match:
                    values = match.group(1).split(',')
                    values = [value.strip().strip("'") for value in values]
                    print(f"Importing student: {values}")  # Debugging log
                    student = Student(
                        student_id=values[0],
                        first_name=values[1],
                        last_name=values[2],
                        field_of_study=values[3],
                        groupe_tp=values[4],
                        groupe_td=values[5],
                    )
                    students_to_import.append(student)

        Student.objects.bulk_create(students_to_import)