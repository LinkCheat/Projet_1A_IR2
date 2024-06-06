from django.db import models

class Absences(models.Model):
    id = models.CharField(db_column='COL 1', max_length=2, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_2 = models.CharField(db_column='COL 2', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_3 = models.CharField(db_column='COL 3', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_4 = models.CharField(db_column='COL 4', max_length=6, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_5 = models.CharField(db_column='COL 5', max_length=22, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'absences'
        
    def __str__(self):
        return self.col_5

class Filieres(models.Model):
    id = models.CharField(db_column='COL 1', max_length=33, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'filieres'
        
    def __str__(self):
        return self.id

class Matieresir(models.Model):
    id = models.CharField(db_column='COL 1', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_2 = models.CharField(db_column='COL 2', max_length=48, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_3 = models.CharField(db_column='COL 3', max_length=7, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_4 = models.CharField(db_column='COL 4', max_length=8, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_5 = models.CharField(db_column='COL 5', max_length=11, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_6 = models.CharField(db_column='COL 6', max_length=22, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_7 = models.CharField(db_column='COL 7', max_length=12, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'matieresir'
        
    def __str__(self):
        return self.col_2


class Tableir(models.Model):
    id = models.CharField(db_column='COL 1', max_length=10, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_2 = models.CharField(db_column='COL 2', max_length=13, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_3 = models.CharField(db_column='COL 3', max_length=15, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_4 = models.CharField(db_column='COL 4', max_length=9, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_5 = models.CharField(db_column='COL 5', max_length=9, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'tableir'
        
    def __str__(self):
        return self.col_2


class Utilisateurs(models.Model):
    id = models.CharField(db_column='COL 1', max_length=8, blank=True, primary_key=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_2 = models.CharField(db_column='COL 2', max_length=15, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_3 = models.CharField(db_column='COL 3', max_length=13, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_4 = models.CharField(db_column='COL 4', max_length=30, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    col_5 = models.CharField(db_column='COL 5', max_length=10, blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = True
        db_table = 'utilisateurs'
        
    def __str__(self):
        return self.col_2


