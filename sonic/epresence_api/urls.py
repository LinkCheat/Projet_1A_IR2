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
    
    path('choisir_groupe/', views.choisir_groupe, name='choisir_groupe'),
    path('choisir_groupe_abs/', views.choisir_groupe_abs, name='choisir_groupe_abs'),

    path('choisir_matiere/', views.choisir_matiere, name='choisir_matiere'),

    path('saisir_note/', views.eleves_liste_notes, name='saisir_note'),
    path('soumettre_notes/', views.soumettre_notes, name='soumettre_notes'),
    
    path('saisir_abs/', views.eleves_liste_abs, name='saisir_abs'),
    path('soumettre_abs/', views.soumettre_abs, name='soumettre_abs'),

    path('reset_password/',views.ChangePassword, name='reset_password'),
        
    path('verify/', views.empty_verify_view, name='empty-verify-view'),

    
    
    
    path('del/', views.delsession),

    path('download_csv/', download_csv, name='download_csv'),

]