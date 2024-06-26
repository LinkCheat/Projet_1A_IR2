from django.urls import path
from . import views

app_name = "epresence_api"
urlpatterns = [
    path('hello-world/', views.hello_world, name='hello_world'),
    path('login/', views.LoginView.as_view(), name='api-login'),
    path('reset-pass/', views.send_verif_email.as_view(), name='api-resetpass'),
    path('verify/', views.empty_verify_view, name='empty-verify-view'),  # Assurez-vous d'avoir cette ligne
    path('change-pass/<str:token>/',views.ChangePassword.as_view(), name='change-pass'),
]
