from django.urls import path, include
from . import views

app_name = "epresence_api"
urlpatterns = [
    path('hello-world/', views.hello_world, name='hello_world'),
    path('login/', views.LoginView.as_view(), name='api-login'),
]