from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('epresence_api.urls')),  # Assurez-vous d'inclure ceci
]
