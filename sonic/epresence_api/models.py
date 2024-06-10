from django.db import models


class Absence(models.Model):
    id = models.CharField(db_column='COL 1', max_length=2, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    id_élève = models.CharField(db_column='COL 2', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    date = models.CharField(db_column='COL 3', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    Absent = models.CharField(db_column='COL 4', max_length=6, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    Motif = models.CharField(db_column='COL 5', max_length=30, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'absence'
        
    def __str__(self):
        return self.date

class MatiereIR(models.Model):
    matiere_id = models.CharField(db_column='COL 1', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    nom_matiere = models.CharField(db_column='COL 2', max_length=48, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    semestre = models.CharField(db_column='COL 3', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    coefficient = models.CharField(db_column='COL 4', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ue = models.CharField(db_column='COL 5', max_length=22, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    total_heures = models.CharField(db_column='COL 6', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    professor_id = models.CharField(db_column='COL 7', max_length=8, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'matiere_IR'
        
    def __str__(self):
        return self.nom_matiere


class TableIR(models.Model):
    id = models.CharField(db_column='COL 1', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TD = models.CharField(db_column='COL 2', max_length=9, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    TP = models.CharField(db_column='COL 3', max_length=9, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
   
    class Meta:
        managed = True
        db_table = 'table_IR'
        
    def __str__(self):
        return self.id