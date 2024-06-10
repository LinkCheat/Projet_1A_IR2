from django.db import models
from django.contrib.auth.models import User

class Matiere(models.Model):
    id_matiere = models.CharField(db_column='COL 1', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    nom_matiere = models.CharField(db_column='COL 2', max_length=48, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    semestre = models.CharField(db_column='COL 3', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    coefficient = models.CharField(db_column='COL 4', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ue = models.CharField(db_column='COL 5', max_length=22, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    total_heures = models.CharField(db_column='COL 6', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_professor = models.ForeignKey(User, on_delete=models.SET_NULL, db_column='COL 7', max_length=8, blank=True, null=True, related_name='professor_matiere')


    class Meta:
        managed = True
        db_table = 'matiere'
        
    def __str__(self):
        return self.id_matiere + ' ' + self.nom_matiere
    
class GroupTPTD(models.Model):
    id_students = models.ManyToManyField(User, db_column='COL 1', blank=False, related_name='students_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    nom_group = models.CharField(db_column='COL 2', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'groupe'
        constraints = [
            models.UniqueConstraint(fields=['nom_group'], name='unique_group_name')
        ]

    def __str__(self):
        return str(self.nom_group)


class Eleve(models.Model):
    id_student = models.OneToOneField(User, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False, related_name='student_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TD = models.ForeignKey(GroupTPTD, db_column='COL 2', on_delete=models.SET_NULL, blank=True, null=True, related_name='TD_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TP = models.ForeignKey(GroupTPTD, db_column='COL 3', on_delete=models.SET_NULL, blank=True, null=True, related_name='TP_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
   
    class Meta:
        managed = True
        db_table = 'eleve'
        
    def __str__(self):
        return str(self.id_student.username)
    

class Note(models.Model):
    id_student = models.ForeignKey(User, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False, related_name='student_note')  # Field name made lowercase. Field renamed to remove unsuitable characters.    
    id_matiere = models.ForeignKey(Matiere, on_delete=models.CASCADE, db_column='COL 2', blank=False, null=False, related_name='matiere_note')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    note = models.FloatField(db_column='COL 3', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    date_evaluation = models.DateField(db_column='COL 4', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
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
    
class Seance(models.Model):
    id_matiere = models.ForeignKey(Matiere, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False, related_name='matiere_seance')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_group = models.ForeignKey(GroupTPTD, on_delete=models.CASCADE, db_column='COL 2', blank=True, related_name='group_seance')
    date = models.DateField(db_column='COL 3', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    heure_debut = models.TimeField(db_column='COL 4', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    heure_fin = models.TimeField(db_column='COL 5', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    salle = models.CharField(db_column='COL 6', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    type_cours = models.CharField(db_column='COL 7', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'seance'
        constraints = [
            models.UniqueConstraint(fields=['id_matiere', 'date', 'heure_debut', 'heure_fin'], name='unique_cours_matiere_date_heure_salle_type')
        ]
        
    def __str__(self):
        return str(self.id_group.nom_group) + ' ' + str(self.id_matiere.nom_matiere) + ' ' + str(self.date)
    
class Absence(models.Model):
    id_student = models.ForeignKey(User, on_delete=models.CASCADE, db_column='COL 1', blank=False, null=False, unique=False, related_name='student_absence')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    seance = models.ForeignKey(Seance, on_delete=models.CASCADE, db_column='COL 2', blank=True, null=True, unique=False, related_name='absence_seance')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    motif = models.CharField(db_column='COL 3', max_length=30, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'absence'
        constraints = [
            models.UniqueConstraint(fields=['id_student', 'seance'], name='unique_absence_student_seance')
        ]

        
    def __str__(self):
        return str(self.id_student.username) + ' ' + str(self.seance.id_matiere.nom_matiere) + ' ' + str(self.seance.date)