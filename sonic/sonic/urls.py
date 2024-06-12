from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(('epresence_api.urls'))),
]

handler400 = 'epresence_api.views.error_400'
handler403 = 'epresence_api.views.error_403'
handler404 = 'epresence_api.views.error_404'
handler405 = 'epresence_api.views.error_405'
handler500 = 'epresence_api.views.error_500'