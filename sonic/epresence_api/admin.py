from django.contrib import admin
from .models import Absence,Matiere,Eleve,Note,Seance,GroupTPTD


admin.site.register([Absence,Matiere,Eleve,Note,Seance,GroupTPTD])
