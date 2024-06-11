from django.urls import path
from . import views
from .views import *


app_name = "epresence_api"
urlpatterns = [
    
    
    path('',views.LoginView, name='loginview'),
    path('login',views.Login),
    
    path('professeur/', views.ProfView, name='professeur'),
    
    
    path('etudiant/', views.StudentView, name='etudiant'),
    path('Emplois_du_temps/', views.emploi_du_temps_eleve, name='emploi_eleve'),
    path('notes/', views.Notes_eleve, name='notes'),
    path('absences/', views.Absences, name='absences'),
    
    
    path('password/', views.ChangePasswordView),
    path('resetpassword/', views.resetPasswordView),
    
    
    path('verify/', views.empty_verify_view, name='empty-verify-view'),  # Assurez-vous d'avoir cette ligne
    
    
    path('del/', views.delsession),
    path('download/csv/', download_csv, name='download_csv'),
]
