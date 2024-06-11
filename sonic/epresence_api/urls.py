from django.urls import path
from . import views
from .views import *


app_name = "epresence_api"
urlpatterns = [
    
    
    path('',views.LoginView),
    path('login',views.Login),
    
    path('prof/', views.ProfView),
    
    
    path('student/', views.StudentView),
    path('Note_student/', views.Notes_eleve),
    path('Absence/', views.Absences),
    
    
    path('password/', views.ChangePasswordView),
    path('resetpassword/', views.resetPasswordView),
    
    
    path('verify/', views.empty_verify_view, name='empty-verify-view'),  # Assurez-vous d'avoir cette ligne
    
    
    path('del/', views.delsession),
    path('download/csv/', download_csv, name='download_csv'),
]
