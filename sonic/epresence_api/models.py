from django.db import models
from django.contrib.auth.models import User

#Supprimer élève plus tard

class Matiere(models.Model):
    id_matiere = models.CharField(db_column='Id', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    nom_matiere = models.CharField(db_column='Matière', max_length=48, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    semestre = models.CharField(db_column='Semestre', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    coefficient = models.CharField(db_column='Coefficient', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ue = models.CharField(db_column='UE', max_length=22, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    total_heures = models.CharField(db_column='Total d\'heures', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_professor = models.ForeignKey(User, on_delete=models.SET_NULL, db_column='Professeur', max_length=8, blank=True, null=True, related_name='professor_matiere')


    class Meta:
        managed = True
        db_table = 'matiere'
        
    def __str__(self):
        return self.id_matiere + ' ' + self.nom_matiere
    
class GroupTPTD(models.Model):
    id_students = models.ManyToManyField(User, db_column='Etudiants', blank=False, related_name='students_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    nom_group = models.CharField(db_column='Groupe', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'groupe'
        constraints = [
            models.UniqueConstraint(fields=['nom_group'], name='unique_group_name')
        ]

    def __str__(self):
        return str(self.nom_group)


class Eleve(models.Model):
    id_student = models.OneToOneField(User, on_delete=models.CASCADE, db_column='Etudiant', blank=False, null=False, related_name='student_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    Classe = models.ForeignKey(GroupTPTD, db_column='Classe', on_delete=models.SET_NULL, blank=True, null=True, related_name='class_group')  # Field name made lowercase.
    TD = models.ForeignKey(GroupTPTD, db_column='Groupe TD', on_delete=models.SET_NULL, blank=True, null=True, related_name='TD_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TP = models.ForeignKey(GroupTPTD, db_column='Groupe TP', on_delete=models.SET_NULL, blank=True, null=True, related_name='TP_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.
   
    class Meta:
        managed = True
        db_table = 'eleve'
        
    def __str__(self):
        return str(self.id_student.username)
    
class Professeur(models.Model):
    id_professor = models.OneToOneField(User, on_delete=models.CASCADE, db_column='Professeur', blank=False, null=False, related_name='professor_group')  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'professeur'
        constraints = [
            models.UniqueConstraint(fields=['id_professor'], name='unique_professor_professor')
        ]
        
    def __str__(self):
        return str(self.id_professor.username)
    

class Note(models.Model):
    id_student = models.ForeignKey(User, on_delete=models.CASCADE, db_column='Etudiant', blank=False, null=False, related_name='student_note')  # Field name made lowercase. Field renamed to remove unsuitable characters.    
    id_matiere = models.ForeignKey(Matiere, on_delete=models.CASCADE, db_column='Matière', blank=False, null=False, related_name='matiere_note')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    note = models.FloatField(db_column='Note', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    date_evaluation = models.DateField(db_column='Date d\'évaluation', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    type_evaluation = models.CharField(db_column='Type d\'évaluation', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    remarque = models.CharField(db_column='Remarque', max_length=60, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'note'
        constraints = [
            models.UniqueConstraint(fields=['id_student', 'id_matiere'], name='unique_note_student_matiere')
        ]
        
    def __str__(self):
        return str(self.id_student.username) + ' ' + str(self.id_matiere.id_matiere)
    
class Seance(models.Model):
    id_matiere = models.ForeignKey(Matiere, on_delete=models.CASCADE, db_column='Matière', blank=False, null=False, related_name='matiere_seance')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_group = models.ForeignKey(GroupTPTD, on_delete=models.CASCADE, db_column='Groupe', blank=True, related_name='group_seance')
    date = models.DateField(db_column='Date', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    heure_debut = models.TimeField(db_column='Heure début', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    heure_fin = models.TimeField(db_column='Heure fin', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    salle = models.CharField(db_column='Salle', max_length=20, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    type_cours = models.CharField(db_column='Type', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'seance'
        constraints = [
            models.UniqueConstraint(fields=['id_matiere', 'date', 'heure_debut', 'heure_fin'], name='unique_cours_matiere_date_heure_salle_type')
        ]
        
    def __str__(self):
        return str(self.id_group.nom_group) + ' ' + str(self.id_matiere.nom_matiere) + ' ' + str(self.date)
    
class Absence(models.Model):
    id_student = models.ForeignKey(User, on_delete=models.CASCADE, db_column='Etudiant', blank=False, null=False, unique=False, related_name='student_absence')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    seance = models.ForeignKey(Seance, on_delete=models.CASCADE, db_column='Séance', blank=True, null=True, unique=False, related_name='absence_seance')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    motif = models.CharField(db_column='Motif', max_length=60, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'absence'
        constraints = [
            models.UniqueConstraint(fields=['id_student', 'seance'], name='unique_absence_student_seance')
        ]

        
    def __str__(self):
        return str(self.id_student.username) + ' ' + str(self.seance.id_matiere.nom_matiere) + ' ' + str(self.seance.date)
