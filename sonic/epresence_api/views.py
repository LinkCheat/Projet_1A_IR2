from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib import messages
from django.urls import reverse
from base64 import urlsafe_b64encode, urlsafe_b64decode
from django.core.mail import send_mail
from django.core.signing import TimestampSigner
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView
from django.shortcuts import get_object_or_404
from .models import Utilisateur
from django.contrib.auth.hashers import make_password
from itsdangerous import BadSignature
 

# API pour la page du login
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
        

# API pour l'envoi du mail
def gen_email_token(email):
    timestamp_token = TimestampSigner().sign_object({"email": email})
    email_verif_token = urlsafe_b64encode(timestamp_token.encode()).decode()
    return email_verif_token

class send_verif_email(APIView):
    def post(self, request, *args, **kwargs):
        data = request.data
        email = data.get('email')
        if not email:
            return Response({'message': 'Adresse e-mail requise'}, status=status.HTTP_400_BAD_REQUEST)
        
        user = get_object_or_404(Utilisateur, email=email)
        token = gen_email_token(email)
        
        verif_link = request.build_absolute_uri(reverse("reset-password-confirm", args=[token]))
        email_content = f""" 
        Reinitialisation du mot de passe

        Pour reinitialiser votre mot de passe, veuillez cliquez sur le lien ci-dessous:

        {verif_link}
        """

        is_sent = send_mail(
            'Reinitialiser votre mot de passe',
            '',
            None,
            [email],
            fail_silently=True,
            html_message=email_content
        )

        if is_sent == 0:
            messages.error(request, "L'email de vérification n'a pas pu être envoyé, veuillez contacter un admin")
            return Response({'message': "L'email de vérification n'a pas pu être envoyé, veuillez contacter un admin"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
        
        return Response({'message': 'Email de vérification envoyé'}, status=status.HTTP_200_OK)

class ChangePassword(APIView):
    def post(self, request, *args, **kwargs):
        token = request.data.get('token')
        password = request.data.get('password')
        
        if not token:
            return Response({'message': 'Token requis'}, status=status.HTTP_400_BAD_REQUEST)
        
        if not password:
            return Response({'message': 'Mot de passe requis'}, status=status.HTTP_400_BAD_REQUEST)
        
        try:
            decoded_data = urlsafe_b64decode(token).decode()
            data = TimestampSigner().unsign_object(decoded_data)
            email = data['email']
            
            user = get_object_or_404(Utilisateur, email=email)
            user.password = make_password(password)
            user.save()
            return Response({'message': 'Mot de passe modifié avec succès'}, status=status.HTTP_200_OK)
        except BadSignature:
            return Response({'message': 'Token invalide ou expiré'}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({'message': str(e)}, status=status.HTTP_400_BAD_REQUEST)
        
        


# exemple de vue API 
@api_view(['GET'])
def hello_world(request):
    return Response({'message': 'Hello, world from Django API!'})

def empty_verify_view(request):
    return render(request, 'verify.html')

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
