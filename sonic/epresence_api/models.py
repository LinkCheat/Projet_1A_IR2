from django.db import models
from django.contrib.auth.models import User


class Absence(models.Model):
    id_student = models.ForeignKey(User, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False, unique=False)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    date = models.CharField(db_column='COL 2', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    motif = models.CharField(db_column='COL 3', max_length=30, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'absence'
        constraints = [
            models.UniqueConstraint(fields=['id_student', 'date','motif'], name='unique_absence_student_date_motif')
        ]

        
    def __str__(self):
        return str(self.id_student.username) + ' ' + self.date 

class MatiereIR(models.Model):
    id_matiere = models.CharField(db_column='COL 1', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    nom_matiere = models.CharField(db_column='COL 2', max_length=48, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    semestre = models.CharField(db_column='COL 3', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    coefficient = models.CharField(db_column='COL 4', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ue = models.CharField(db_column='COL 5', max_length=22, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    total_heures = models.CharField(db_column='COL 6', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    professor_id = models.ForeignKey(User, on_delete=models.SET_NULL, db_column='COL 7', max_length=8, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'matiere'
        
    def __str__(self):
        return self.id_matiere + ' ' + self.nom_matiere


class TableIR(models.Model):
    id_student = models.OneToOneField(User, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TD = models.CharField(db_column='COL 2', max_length=9, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TP = models.CharField(db_column='COL 3', max_length=9, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
   
    class Meta:
        managed = True
        db_table = 'table_IR'
        
    def __str__(self):
        return str(self.id_student.username)
    

class NoteIR(models.Model):
    id_student = models.ForeignKey(User, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False)  # Field name made lowercase. Field renamed to remove unsuitable characters.    
    id_matiere = models.ForeignKey(MatiereIR, on_delete=models.CASCADE, db_column='COL 2', blank=False, null=False)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    note = models.FloatField(db_column='COL 3', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    date_evaluation = models.CharField(db_column='COL 4', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    type_evaluation = models.CharField(db_column='COL 5', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    remarques = models.CharField(db_column='COL 6', max_length=60, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'note'
        constraints = [
            models.UniqueConstraint(fields=['id_student', 'id_matiere'], name='unique_note_student_matiere')
        ]
        
    def __str__(self):
        return str(self.id_student.username) + ' ' + str(self.id_matiere.id_matiere)