from django.db import models
from django.contrib.auth.models import User, AbstractUser, Group, Permission
from django.db.models.signals import post_save
from django.dispatch import receiver

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    def str(self):
        return self.user.email

class Hourly(models.Model):
    date = models.DateField()
    motif = models.CharField(max_length=100)
    attendance = models.BooleanField()
    def str(self):
        return self.motif

class Student(models.Model):
    user = models.ForeignKey(Profile, on_delete=models.CASCADE, related_name='student')
    note = models.FloatField()
    attendances = models.ManyToManyField(Hourly, related_name='attendances')
    def str(self):
        return self.user.user.email

class Sector(models.Model):
    name = models.CharField(max_length=100)
    coefficient = models.FloatField()
    classe = models.ManyToManyField(Student, related_name='classe')
    def str(self):
        return self.name

class Subject(models.Model):
    name = models.CharField(max_length=100)
    sector = models.ManyToManyField(Sector, related_name='sector')
    def str(self):
        return self.name

class Professor(models.Model):
    user = models.OneToOneField(Profile, on_delete=models.CASCADE, related_name='professor')
    subject = models.ManyToManyField(Subject, related_name='subject')
    def str(self):
        return self.user.user.email

class Supervisor(models.Model):
    user = models.OneToOneField(Profile, on_delete=models.CASCADE, related_name='supervisor')
    professors = models.ManyToManyField(Professor, related_name='professor')
    def str(self):
        return self.user.user.email


"""
class Supervisor(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name
    
class Professor(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name
    
class Subject(models.Model):
    name = models.CharField(max_length=100)
    coefficient = models.FloatField()
    def __str__(self):
        return self.name
    
class Sector(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
        return self.name
    
class Groups(models.Model):
    name = models.CharField(max_length=100, verbose_name='Group')
    def __str__(self):
        return self.name

class Student(models.Model):
    name = models.CharField(max_length=100)
    filiere = models.ForeignKey(Sector, on_delete=models.CASCADE)
    def __str__(self):
        return self.name

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

        instance.groups.add(td_group)
        instance.groups.add(tp_group)
"""




