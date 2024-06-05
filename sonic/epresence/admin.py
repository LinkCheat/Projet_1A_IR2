from django.contrib import admin
from .models import Hourly,Profile,Supervisor,Professor,Subject,Sector,Student

admin.site.register(Hourly)
admin.site.register(Profile)
admin.site.register(Supervisor)
admin.site.register(Professor)
admin.site.register(Subject)
admin.site.register(Sector)
admin.site.register(Student)