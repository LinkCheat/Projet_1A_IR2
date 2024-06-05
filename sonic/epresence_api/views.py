from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView

class LoginView(APIView):
    def post(self, request, *args, **kwargs):
        data = request.data
        email = data.get('email')
        password = data.get('password')

        if not email or not password:
            return Response({'message': 'Adresse e-mail et mot de passe sont requis'}, status=status.HTTP_400_BAD_REQUEST)

        try:
            user = User.objects.get(email=email)
            username = user.username
        except User.DoesNotExist:
            return Response({'message': 'Adresse e-mail ou mot de passe incorrect'}, status=status.HTTP_400_BAD_REQUEST)

        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return Response({'message': 'Connexion réussie'}, status=status.HTTP_200_OK)
        else:
            return Response({'message': 'Adresse e-mail ou mot de passe incorrect'}, status=status.HTTP_400_BAD_REQUEST)


# exemple de vue API 

@api_view(['GET'])
def hello_world(request):
    return Response({'message': 'Hello, world from Django API!'})

"""
def index(request):
    return render(request, 'index.html')
"""

def error_400(request, exception):
    return render(request, 'epresence_api/400.html', status=400)

def error_403(request, exception):
    return render(request, 'epresence_api/403.html', status=403)

def error_404(request, exception):
    return render(request, 'epresence_api/404.html', status=404)
    
def error_405(request, exception):
    return render(request, 'epresence_api/405.html', status=405)    

def error_500(request):
    return render(request, 'epresence_api/500.html', status=500)
