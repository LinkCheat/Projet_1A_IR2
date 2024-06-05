from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
import json
from django.contrib.auth.models import User

@csrf_exempt
def login_view(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        email = data.get('email')
        password = data.get('password')
        try:
            user = User.objects.get(email=email)
            username = user.username
        except User.DoesNotExist:
            return JsonResponse({'message': 'Adresse e-mail ou mot de passe incorrect'}, status=400)
        
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return JsonResponse({'message': 'Connexion réussie'})
        else:
            return JsonResponse({'message': 'Adresse e-mail ou mot de passe incorrect'}, status=400)
    return JsonResponse({'message': 'Requête invalide'}, status=400)



def index(request):
    return render(request, 'index.html')



def error_400(request, exception):
    return render(request, 'epresence/400.html', status=400)

def error_403(request, exception):
    return render(request, 'epresence/403.html', status=403)

def error_404(request, exception):
    return render(request, 'epresence/404.html', status=404)
    
def error_405(request, exception):
    return render(request, 'epresence/405.html', status=405)    

def error_500(request):
    return render(request, 'epresence/500.html', status=500)
