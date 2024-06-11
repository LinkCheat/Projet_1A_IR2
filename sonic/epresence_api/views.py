from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib import messages
from epresence_api.models import *
from django.core.cache import cache
import csv
import io
from django.http import HttpResponse

from django.db.models import Q


    
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

def LoginView(request):
    return render(request, 'epresence_api/login.html')

def ProfView(request):
    return render(request, 'epresence_api/prof.html')

def StudentView(request):
    return render(request, 'epresence_api/student.html')

def ChangePasswordView(request):
    return render(request, 'epresence_api/Password.html')

def resetPasswordView(request):
    return render(request, 'epresence_api/resetpassword.html')
    
# API pour la page du login
def Login(request):

    if request.method == "POST":
        email = request.POST['email']
        password = request.POST['password']
        user = User.objects.get(email=email)
        auth = authenticate(request, username=user.username, password=password)

        if auth is not None:

            if(cache.get('id')!=user.username):
                cache.clear()
            login(request, user)
            cache.set('id',user.username)
            cache.set('email', user.email)
            cache.set('first_name', user.first_name)
            cache.set('last_name', user.last_name)

            try:
                a = int(user.username)
            except ValueError:
                a = None


            if (a!=None and a<1000):
                return render(request, 'epresence_api/prof.html')
            elif (a!=None):
                return render(request, 'epresence_api/student.html')
            else: 
                return redirect('/admin/')
            
        else:
            return render(request, 'epresence_api/login.html')
        
    else:
        return render(request, 'epresence_api/login.html')
    
def LogoutView(request):
    cache.clear()
    return redirect('/')

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




#csv

#Note de l'eleve
def Notes_eleve(request):
    csv = get_csv_cache('notes')
    id = cache.get('id')
    user = User.objects.get(username=id)
    if csv == None:
        data = Note.objects.all().values_list('id_student','note','id_matiere')
        data = data.filter(id_student = user)
        data = data.values_list('id_matiere','note')
        csv_cache('notes',['matiere','note'],data)
        csv = get_csv_cache('notes')
    csv_download_applicate('notes')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv})

def Absences(request):
    csv = get_csv_cache('absences')
    id = cache.get('id')
    user = User.objects.get(username=id)
    if csv == None:
        data = Absence.objects.all().values_list('id_student','motif','seance')
        data = data.filter(id_student = user)
        data = data.values_list('seance','motif')
        csv_cache('absences',['seance numéro','motif'],data)
        csv = get_csv_cache('absences')
    csv_download_applicate('absences')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv})

def emploi_du_temps_eleve(request):
    csv = get_csv_cache('emploi_du_temps_eleve')
    id = cache.get('id')
    user = User.objects.get(username=id)
    eleve = Eleve.objects.get(id_student=user.id)
    if csv == None:
        data = Seance.objects.all().values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours')
        data = data.filter(Q(id_group=eleve.Classe) | Q(id_group=eleve.TD) | Q(id_group=eleve.TP))
        data = data.values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours')
        csv_cache('emploi_du_temps_eleve',['matiere','date','heure_debut','heure_fin','salle','type_cours'],data)
        csv = get_csv_cache('emploi_du_temps_eleve')
    csv_download_applicate('emploi_du_temps_eleve')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv})
        
        
