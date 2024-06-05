from django.db import models
from django.contrib.auth.models import AbstractUser, Group, Permission
from django.db.models.signals import post_save
from django.dispatch import receiver

class Supervisor(models.Model):
    name = models.CharField(max_length=15)
    def __str__(self):
        return self.name

class Professor(models.Model):
    name = models.CharField(max_length=15)
    def __str__(self):
        return self.name

class Sector(models.Model):
    name = models.CharField(max_length=15)
    def __str__(self):
        return self.name

class Groups(models.Model):
    name = models.CharField(max_length=15, verbose_name='Group')
    def __str__(self):
        return self.name

class Matiere(models.Model):
    matiere_id = models.CharField(max_length=10, primary_key=True)
    nom_matiere = models.CharField(max_length=25, null=True, blank=True)
    filiere = models.CharField(max_length=25, null=True, blank=True)
    semestre = models.CharField(max_length=5, null=True, blank=True)
    coefficient = models.IntegerField(null=True, blank=True)
    ue = models.CharField(max_length=5, null=True, blank=True)

    def __str__(self):
        return self.nom_matiere

class Student(models.Model):
    student_id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=15)
    last_name = models.CharField(max_length=15)
    field_of_study = models.CharField(max_length=5)
    groupe_tp = models.CharField(max_length=5, null=True, blank=True)
    groupe_td = models.CharField(max_length=5, null=True, blank=True)

    def __str__(self):
        return f"{self.first_name} {self.last_name}"

class CustomUser(AbstractUser):
    groups = models.ManyToManyField(
        Group,
        verbose_name=('groups'),
        blank=True,
        related_name='custom_users'
    )
    user_permissions = models.ManyToManyField(
        Permission,
        verbose_name=('user permissions'),
        blank=True,
        related_name='custom_users_permissions'
    )

@receiver(post_save, sender=CustomUser)
def assign_student_groups(sender, instance, created, **kwargs):
    if created and getattr(instance, 'is_student', False):

        student_name = instance.username.lower()
        if "td1" in student_name:
            td_group, _ = Group.objects.get_or_create(name='TD1')
        elif "td2" in student_name:
            td_group, _ = Group.objects.get_or_create(name='TD2')

        if "tp1" in student_name:
            tp_group, _ = Group.objects.get_or_create(name='TP1')
        elif "tp2" in student_name:
            tp_group, _ = Group.objects.get_or_create(name='TP2')
        elif "tp3" in student_name:
            tp_group, _ = Group.objects.get_or_create(name='TP3')

        if td_group:
            instance.groups.add(td_group)
        if tp_group:
            instance.groups.add(tp_group)
