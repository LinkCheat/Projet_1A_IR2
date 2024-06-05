from django.urls import path
from . import views

app_name = "rooms"
urlpatterns = [
    path('hello-world/', views.hello_world, name='hello_world'),
]