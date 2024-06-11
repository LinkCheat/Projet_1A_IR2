from django.urls import path
from . import views
from .views import *


app_name = "epresence_api"
urlpatterns = [
    
    
    path('',views.LoginView, name='loginview'),
    path('login',views.Login),
    path('logout',views.LogoutView, name='logout'),
    
    path('professeur/', views.ProfView, name='professeur'),
    path('Mes_cours/', views.emploi_du_temps_prof, name='emploi_prof'),

    
    
    path('etudiant/', views.StudentView, name='etudiant'),
    path('Emplois_du_temps/', views.emploi_du_temps_eleve, name='emploi_eleve'),
    path('notes/', views.Notes_eleve, name='notes'),
    path('absences/', views.Absences, name='absences'),
    
    
    path('password/', views.ChangePasswordView, name='change_password'),
    path('resetpassword/', views.resetPasswordView, name='reset_password'),
    
    
    path('verify/', views.empty_verify_view, name='empty-verify-view'),  # Assurez-vous d'avoir cette ligne
    
    
    path('del/', views.delsession),
    path('download/csv/', download_csv, name='download_csv'),
]
