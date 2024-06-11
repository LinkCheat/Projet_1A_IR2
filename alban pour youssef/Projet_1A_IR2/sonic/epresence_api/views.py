from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib import messages
from django.urls import reverse
from base64 import urlsafe_b64encode
from django.core.mail import send_mail
from django.core.signing import TimestampSigner
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView

from django.core.cache import cache
import csv
import io
from django.http import HttpResponse


#export un csv dans le cache a partir d une requête SQL: export_books_csv('nom_du_fichier', descriptif du fichie(exemple: ['Title', 'Author']), data_obtenue_sql)
def csv_cache(name, titre_csv, data):
    # Créez un buffer en mémoire pour le CSV
    csv_buffer = io.StringIO()
    
    # Créez un writer CSV
    writer = csv.writer(csv_buffer)
    writer.writerow(titre_csv)  # Écrivez l'en-tête

    # Écrivez les données dans le CSV
    for row in data:
        writer.writerow(row)
    
    # Obtenez le contenu du buffer CSV
    csv_content = csv_buffer.getvalue()
    
    # Clé du cache
    cache_key = name

    # Vérifiez si les données CSV sont déjà en cache
    csv_data = cache.get(cache_key)

    if csv_data is None:
        # Si non, mettez les données en cache
        cache.add(cache_key, csv_content)  # Cache pour 1 heure

    # Fermez le buffer
    csv_buffer.close()
    #return print(csv_content) #test
    
def get_csv_cache(name):
    csv_content = cache.get(name)
    # Transformez le contenu CSV en une liste de dictionnaires si non vide
    if csv_content is None:
        csv_data = None
    else:
        csv_buffer = io.StringIO(csv_content)
        reader = csv.DictReader(csv_buffer)
        csv_data = list(reader)
    return csv_data

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
        except User.DoesNotExist:
            return Response({'message': 'Adresse e-mail ou mot de passe incorrect'}, status=status.HTTP_400_BAD_REQUEST)

        auth = authenticate(request, username=user.username, password=password)
        if auth is not None:
            if(cache.get('username')!=user.username):
                cache.clear()
            login(request, auth)
            cache.add('id',user.username)
            cache.add('email', user.email)
            cache.add('first_name', user.first_name)
            cache.add('last_name', user.last_name)
            data = User.objects.all().values_list('username','first_name','last_name','email')
            csv_cache('test',['id','first_name','last_name','email'],data)
            csv_download_applicate('test')
            
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
        
        verif_link = request.build_absolute_uri(reverse("epresence_api:empty-verify-view")) + gen_email_token(email)
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



def getsession(request):
    csv_data=get_csv_cache('test')
    name = cache.get('first_name')
    return render(request, 'epresence_api/user.html', {'name':name,'csv_data':csv_data})

def delsession(request):
    k = cache.clear()
    return render(request, 'epresence_api/user.html', {'name':k})

#choisi le fichier a telecharger
def csv_download_applicate(fichier):
    cache.set('Dowload',cache.get(fichier))

#telecharge le fichier
def download_csv(request):
    csv_data = cache.get('Dowload')
    response = HttpResponse(csv_data, content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="data.csv"'
    return response



