from django.urls import path
from . import views
from .views import *
from django.contrib.auth import views as auth_views

app_name = 'epresence_api'
urlpatterns = [
    
    path('',views.LoginView, name='loginview'),
    path('login',views.Login),
    path('logout',views.LogoutView, name='logout'),

    path('home/', views.HomeView, name='home'),

    path('Mes_absences/', views.Absences, name='absences_perso'),

    
    
    
    path('Espace_professeur/', views.ProfView, name='professeur'),
    path('Mes_cours/', views.emploi_du_temps_prof, name='emploi_prof'),
    path('notes_prof/', views.Notes_prof, name='notes_prof'),
    path('Absences_élèves/', views.Absences_cours, name='absences_cours'),
    path('Stat_professeur/',views.stat_moyenne_par_matiere_prof, name='stat_prof'),

    
    
    path('Espace_etudiant/', views.StudentView, name='etudiant'),
    path('Emplois_du_temps/', views.emploi_du_temps_eleve, name='emploi_eleve'),
    path('notes_eleve/', views.Notes_eleve, name='notes_eleve'),
    path('Stat_élève/',views.stat_note_par_matiere_eleve, name='stat_eleve'),
    
    
    path('reset_password/',views.ChangePassword, name='reset_password'),
        
    path('verify/', views.empty_verify_view, name='empty-verify-view'),

    
    
    
    path('del/', views.delsession),

    path('download_csv/', download_csv, name='download_csv'),

]