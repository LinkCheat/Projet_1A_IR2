from django.urls import path
from .views import LoginView, hello_world

urlpatterns = [
    path('login/', LoginView.as_view(), name='api-login'),
    path('hello/', hello_world, name='hello-world'),
]
