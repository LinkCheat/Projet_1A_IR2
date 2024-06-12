from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib import messages
from epresence_api.models import *
from django.core.cache import cache
from django.core.exceptions import ObjectDoesNotExist
from datetime import datetime
import csv
import io
from django.http import HttpResponse
from django.contrib.auth.hashers import make_password
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

    id = cache.get('id')

    if id == None:
        return redirect('/')
    
    user = User.objects.get(username=id)

    cache.set('id',user.username)
    cache.set('email', user.email)
    cache.set('first_name', user.first_name)
    cache.set('last_name', user.last_name)


    return render(request, 'epresence_api/prof.html', {'username':user.username,'first_name':user.first_name,'last_name':user.last_name})

def StudentView(request):

    id = cache.get('id')

    if id == None:
        return redirect('/')
    
    user = User.objects.get(username=id)

    cache.set('id',user.username)
    cache.set('email', user.email)
    cache.set('first_name', user.first_name)
    cache.set('last_name', user.last_name)

    return render(request, 'epresence_api/student.html', {'username':user.username,'first_name':user.first_name,'last_name':user.last_name})

def ChangePassword(request):

    if request.method == "POST":
        email = request.POST['email']
        password = request.POST['password']

         
        try:
            user = User.objects.get(email=email)
        except User.DoesNotExist:
            messages.error(request, 'Email incorrect!')
            return redirect(request.META.get('HTTP_REFERER', '/'))
        
    
        user = User.objects.get(email=email)

        user.password=make_password(password)
        user.save()

        messages.success(request, 'Mot de passe changé avec succès!')
        return redirect('/')
        
    else:
        return render(request, 'epresence_api/change_password.html')

def absProfView(request):
    return render(request, 'epresence_api/Absence_csv.html')
    
# API pour la page du login
def Login(request):

    cache.clear()

    if request.method == "POST":
        email = request.POST['email']
        password = request.POST['password']

         

        try:
            user = User.objects.get(email=email)
        except User.DoesNotExist:
            messages.error(request, 'Email incorrect!')
            return redirect(request.META.get('HTTP_REFERER', '/'))

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

            if (a!=None):
                return redirect('/home/')
            else: 
                return redirect('/admin/')
    
        else:
            return render(request, 'epresence_api/login.html')
        
    else:
        return render(request, 'epresence_api/login.html')
    
def HomeView(request):

    id = cache.get('id')

    if id == None:
        return redirect('/')
    
    user = User.objects.get(username=id)

    cache.set('id',user.username)
    cache.set('email', user.email)
    cache.set('first_name', user.first_name)
    cache.set('last_name', user.last_name)

    try:
        prof = Professeur.objects.get(id_professor=user.id)
        if prof:
            return redirect('/Espace_professeur/')
    except ObjectDoesNotExist:
        return redirect('/Espace_etudiant/')
    
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


#csv download


#choisi le fichier a telecharger
def csv_download_applicate(fichier):
    cache.set('Dowload',cache.get(fichier))

#telecharge le fichier
def download_csv(request):
    csv_data = cache.get('Dowload')
    response = HttpResponse(csv_data, content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="data.csv"'
    return response


#csv creation
"""
def mon_profil(request):
    user = request.user
    profile = StudentProfile.objects.get(user=user)  # Adjust based on your actual profile model

    if request.method == 'POST':
        form = PasswordChangeForm(user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important for keeping the user logged in
            messages.success(request, 'Votre mot de passe a été changé avec succès!')
            return redirect('mon_profil')
        else:
            messages.error(request, 'Veuillez corriger les erreurs ci-dessous.')
    else:
        form = PasswordChangeForm(user)

    return render(request, 'epresence_api/mon_profil.html', {
        'user': user,
        'profile': profile,
        'form': form
    })
"""

def Notes_eleve(request):
    csv = get_csv_cache('notes_eleve')
    id = cache.get('id')
    if id == None:
        return redirect('/')
    user = User.objects.get(username=id)
    
    if csv == None:

        data = Note.objects.all().values_list('id_student','note','id_matiere','date_evaluation','type_evaluation','remarque')
        data = data.filter(id_student = user)
        data = data.values_list('id_matiere','note','date_evaluation','type_evaluation','remarque').order_by('date_evaluation')

        new_data = []
        for row in data:
            matiere_obj = Matiere.objects.get(pk=row[0])
            new_row = (str(matiere_obj), row[1], row[2], row[3], row[4])
            new_data.append(new_row)

        csv_cache('notes_eleve',['Matière','Note','Date','Type d\'évaluation','Remarque'],new_data)
        csv = get_csv_cache('notes_eleve')



    csv_download_applicate('notes_eleve')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv, 'title':'Notes'})

def Notes_prof(request):
    csv = get_csv_cache('notes_prof')
    id = cache.get('id')
    if id == None:
        return redirect('/')
    user = User.objects.get(username=id)
    
    if csv == None:

        matiere = Matiere.objects.filter(id_professor=user.id)
        data = Note.objects.all().values_list('id_student','note','id_matiere','date_evaluation','type_evaluation','remarque')
        matiere_ids = matiere.values_list('id_matiere', flat=True)
        data = data.filter(id_matiere__in=matiere_ids)
        data = data.values_list('id_student','note','id_matiere','date_evaluation','type_evaluation','remarque').order_by('id_matiere')

        new_data = []
        for row in data:
            student_obj = User.objects.get(pk=row[0])
            matiere_obj = Matiere.objects.get(pk=row[2])

            new_row = (str(student_obj), row[1], str(matiere_obj), row[3], row[4], row[5])
            new_data.append(new_row)

        csv_cache('notes_prof',['Etudiant','Note','Matière','Date','Type d\'évaluation','Remarque'],new_data)
        csv = get_csv_cache('notes_prof')

    csv_download_applicate('notes_prof')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv, 'title':'Notes'})

def Absences(request):
    csv = get_csv_cache('absences_personnelles')
    id = cache.get('id')
    if id == None:
        return redirect('/')
    user = User.objects.get(username=id)
    
    if csv == None:

        data = Absence.objects.all().values_list('id_student','motif','seance')
        data = data.filter(id_student = user)
        data = data.values_list('seance','motif').order_by('seance')

        new_data = []
        for row in data:
            student_obj = User.objects.get(pk=row[0])
            seance_obj = Seance.objects.get(pk=row[2])
            new_row = (str(student_obj), row[1], str(seance_obj))
            new_data.append(new_row)

        csv_cache('absences_personnelles',['Cours','Motif'],new_data)
        csv = get_csv_cache('absences')

    csv_download_applicate('absences_personnelles')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv, 'title':'Absences personnelles'})

def Absences_cours(request):
    csv = get_csv_cache('absences_cours')
    id = cache.get('id')
    if id == None:
        return redirect('/')
    user = User.objects.get(username=id)
    
    if csv == None:

        matiere = Matiere.objects.filter(id_professor=user.id)
        matiere_ids = matiere.values_list('id_matiere', flat=True)
        seance = Seance.objects.all().values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours')
        seance = seance.filter(id_matiere__in=matiere_ids)
        seance_ids = seance.values_list('id', flat=True)
        data = Absence.objects.all().values_list('id_student','motif','seance')
        data = data.filter(seance__in=seance_ids)
        data = data.values_list('id_student','motif','seance').order_by('seance')
        
        new_data = []
        for row in data:
            student_obj = User.objects.get(pk=row[0])
            seance_obj = Seance.objects.get(pk=row[2])
            new_row = (str(student_obj), row[1], str(seance_obj))
            new_data.append(new_row)

        
        csv_cache('absences_cours',['Etudiant','Motif','Cours'],new_data)
        csv = get_csv_cache('absences_cours')

    csv_download_applicate('absences_cours')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv, 'title':'Absences aux cours'})


def emploi_du_temps_eleve(request):
    csv = get_csv_cache('emploi_du_temps_eleve')
    id = cache.get('id')
    if id == None:
        return redirect('/')
    user = User.objects.get(username=id)
    
    if csv == None:

        eleve = Eleve.objects.get(id_student=user.id)
        data = Seance.objects.all().values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours')
        data = data.filter(Q(id_group=eleve.Classe) | Q(id_group=eleve.TD) | Q(id_group=eleve.TP))
        data = data.values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours').order_by('heure_debut').order_by('date')

        new_data = []
        for row in data:
            matiere_obj = Matiere.objects.get(pk=row[0])
            new_row = (str(matiere_obj), row[1], row[2], row[3], row[4], row[5])
            new_data.append(new_row)

        csv_cache('emploi_du_temps_eleve',['Matière','Date','Heure de début','Heure de fin','Salle','Type de cours'],new_data)
        csv = get_csv_cache('emploi_du_temps_eleve')

    csv_download_applicate('emploi_du_temps_eleve')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv, 'title':'Emploi du temps'})

def emploi_du_temps_prof(request):
    csv = get_csv_cache('emploi_du_temps_prof')
    id = cache.get('id')
    if id == None:
        return redirect('/')
    user = User.objects.get(username=id)
    
    if csv == None:
        
        matiere = Matiere.objects.filter(id_professor=user.id)
        data = Seance.objects.all().values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours')
        matiere_ids = matiere.values_list('id_matiere', flat=True)
        data = data.filter(id_matiere__in=matiere_ids)
        data = data.values_list('id_matiere','date','heure_debut','heure_fin','salle','type_cours').order_by('heure_debut').order_by('date')

        new_data = []
        for row in data:
            matiere_obj = Matiere.objects.get(pk=row[0])
            new_row = (str(matiere_obj), row[1], row[2], row[3], row[4], row[5])
            new_data.append(new_row)

        csv_cache('emploi_du_temps_prof',['Matière','Date','Heure de début','Heure de fin','Salle','Type de cours'],new_data)
        csv = get_csv_cache('emploi_du_temps_prof')

    csv_download_applicate('emploi_du_temps_prof')
    return render(request, 'epresence_api/affichage_csv.html',{'first_name':user.first_name,'last_name':user.last_name,'csv_data':csv, 'title':'Emploi du temps'})


#statistic .filter(id_professor=id)

def stat_moyenne_par_matiere_prof(request):
    id=cache.get('id')
    id=User.objects.get(username=id).pk
    c = Matiere.objects.all().filter(id_professor=id).values_list('id_matiere','nom_matiere','semestre','coefficient','ue','total_heures','id_professor')
    d = Note.objects.all().values_list('id_student','id_matiere','note','date_evaluation','type_evaluation','remarque')
    matiere = [item for item in c]
    note = [item for item in d]
    data2=[]
    print(note)  
    print(matiere)  
    for i in note:
        for y in matiere:
            if y[0] == i[1]:
                data2.append([y[1],i[2],i[3]])
                
                
    print(data2)           
    data3=[]           
    for i in data2:
        s=i
        p=1
        for y in data2:
            if y !=i and y[2] == s[2]:
                s[1]=s[1]+y[1]
                p=p+1
        s[1]=s[1]/p
        data3.append(s)
    labels = []
    data = []
    print(data3)
    for i in data3:
        labels = labels+[i[0]]
        data = data+[i[1]]
    
    nom_graphique = 'Moyenne par matiere',
    context = {
        'nom_graphique': 'Moyenne par matiere',  
        'labels': labels,
        'data': data
    }
    return render(request, 'epresence_api/graphe.html',{'nom_graphique' : nom_graphique,'data_from_django':context})

def stat_note_par_matiere_eleve(request):
    id=cache.get('id')
    id=User.objects.get(username=id).pk
    c = Matiere.objects.all().values_list('id_matiere','nom_matiere','semestre','coefficient','ue','total_heures','id_professor')
    d = Note.objects.all().filter(id_student=id).values_list('id_student','id_matiere','note','date_evaluation','type_evaluation','remarque')
    matiere = [item for item in c]
    note = [item for item in d]
    data2=[]

    for i in note:
        for y in matiere:
            if y[0] == i[1]:
                data2.append([y[1],i[2],i[3]])
            else:
                data2.append([y[1],0,i[3]])
    
    labels = []
    data = []
    for i in data2:
        labels = labels+[i[2]]
        data = data+[i[1]]

    nom_graphique = 'Note par matiere',   
    context = {
            
        'nom_graphique': 'Note par matiere',
        'labels': labels,
        'data': data
    }
    return render(request, 'epresence_api/graphe.html',{'nom_graphique' : nom_graphique,'data_from_django':context})
        


# Afficher seance 
"""
def choisir_seance(request):
    csv = get_csv_cache('seance')
    id = cache.get('id')
    if id is None:
        return redirect('/login/')
    user = User.objects.get(username=id)
    
    if csv is None:
        s_groupe = cache.get('selected_group')
        data = Seance.objects.filter(id_group=s_groupe).values_list('id', 'id_matiere', 'date', 'heure_debut', 'heure_fin', 'salle', 'type_cours')
        new_data = []
        for row in data:
            matiere_obj = Matiere.objects.get(pk=row[1])
            new_row = (row[0], str(matiere_obj), row[2], row[3], row[4], row[5], row[6])  # Inclure l'ID et les autres détails dans new_row
            new_data.append(new_row)
        csv_cache('seance', ['id', 'Matiere', 'Date', 'Heure_debut', 'Heure_fin', 'Salle', 'Type_cours'], new_data)
        csv = get_csv_cache('seance')

    if request.method == 'POST':
        selected_seance = request.POST.get('seance')
        cache.set('selected_seance', selected_seance)
        return redirect('/saisir_abs/')  # Ajustez cette redirection selon vos besoins

    return render(request, 'epresence_api/choisir_seance.html', {'first_name': user.first_name, 'last_name': user.last_name, 'seances': csv})

"""

# La saisie des notes
from django.core.paginator import Paginator
def eleves_liste_notes(request):
    csv = get_csv_cache('eleves')
    id = cache.get('id')
    if id is None:
        return redirect('/login/')
    user = User.objects.get(username=id)
    
    if csv is None:
        s_groupe = cache.get('selected_group')

        # Récupérer les élèves dans le groupe sélectionné
        groupes = GroupTPTD.objects.filter(nom_group=s_groupe)
        
        # Préparer les données pour le cache
        data = []
        for groupe in groupes:
            for eleve in groupe.id_students.all():
                data.append((groupe.id, groupe.nom_group, eleve.username))

        # Mettre les données en cache
        csv_cache('eleves', ['id', 'nom_group', 'id_students'], data)
        csv = get_csv_cache('eleves')

    # Pagination
    paginator = Paginator(csv, 17)  # 10 étudiants par page
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    # Conserver les données saisies
    if request.method == 'POST':
        notes_data = request.POST.dict()
        request.session['notes_data'] = notes_data

    # Récupérer les données saisies de la session
    notes_data = request.session.get('notes_data', {})

    return render(request, 'epresence_api/saisir_note.html', {
        'first_name': user.first_name,
        'last_name': user.last_name,
        'page_obj': page_obj,
        'notes_data': notes_data
    })

# soumettre les notes

def soumettre_notes(request):
    if request.method == 'POST':
        id = cache.get('id')
        if id is None:
            return redirect('/login/')
        user = User.objects.get(username=id)
        
        s_matiere = cache.get('selected_matiere')
        s_groupe = cache.get('selected_group')
        
        eleves = GroupTPTD.objects.filter(nom_group=s_groupe).values_list('id', flat=True)
        
        for eleve_id in eleves:
            note = request.POST.get(f'note_{eleve_id}')
            if note:
                # Sauvegarder la note dans la base de données
                Note.objects.create(id_student=eleve_id, id_matiere=s_matiere, note=note)

        return redirect('eleves_liste_notes')

    return redirect('/Espace_professeur/')


# La saisie des absences

def eleves_liste_abs(request):
    csv = get_csv_cache('eleves')
    id = cache.get('id')
    if id is None:
        return redirect('/login/')
    user = User.objects.get(username=id)
    
    if csv is None:
        s_groupe = cache.get('selected_group')

        # Récupérer les élèves dans le groupe sélectionné
        groupes = GroupTPTD.objects.filter(nom_group=s_groupe)
        
        # Préparer les données pour le cache
        data = []
        for groupe in groupes:
            for eleve in groupe.id_students.all():
                data.append((groupe.id, groupe.nom_group, eleve.username))

        # Mettre les données en cache
        csv_cache('eleves', ['id', 'nom_group', 'id_students'], data)
        csv = get_csv_cache('eleves')

    # Pagination
    paginator = Paginator(csv, 10)  # 10 étudiants par page
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    # Conserver les données saisies
    if request.method == 'POST':
        notes_data = request.POST.dict()
        request.session['notes_data'] = notes_data

    # Récupérer les données saisies de la session
    notes_data = request.session.get('notes_data', {})

    return render(request, 'epresence_api/saisir_abs.html', {
        'first_name': user.first_name,
        'last_name': user.last_name,
        'page_obj': page_obj,
        'notes_data': notes_data
    })




def soumettre_abs(request):
    if request.method == 'POST':
        id = cache.get('id')
        if id is None:
            return redirect('/login/')
        user = User.objects.get(username=id)
        
        s_matiere = cache.get('selected_matiere')
        s_groupe = cache.get('selected_group')
        
        eleves = GroupTPTD.objects.filter(nom_group=s_groupe).values_list('id', flat=True)
        
        for eleve_id in eleves:
            absence = request.POST.get(f'absence_{eleve_id}')
            if absence:
                # Sauvegarder l'absence dans la base de données
                Absence.objects.create(id_student=eleve_id, id_matiere=s_matiere, absence=True)

        return redirect('eleves_liste_abs')

    return redirect('/Espace_professeur/')




# Afficher les groupes
def choisir_groupe(request):
    csv = get_csv_cache('groupes')
    id = cache.get('id')
    if id is None:
        return redirect('/login/')
    user = User.objects.get(username=id)
    
    if csv is None:
        data = GroupTPTD.objects.all().values_list('nom_group').order_by('nom_group')
        csv_cache('groupes', ['NomGroupe'], data)
        csv = get_csv_cache('groupes')

    if request.method == 'POST':
        selected_group = request.POST.get('group')
        cache.set('selected_group', selected_group)
        return redirect('/choisir_matiere/')

    return render(request, 'epresence_api/choisir_groupe.html', {'first_name': user.first_name, 'last_name': user.last_name, 'groupes': csv})

def choisir_groupe_abs(request):
    csv = get_csv_cache('groupes')
    id = cache.get('id')
    if id is None:
        return redirect('/login/')
    user = User.objects.get(username=id)
    
    if csv is None:
        data = GroupTPTD.objects.all().values_list('nom_group').order_by('nom_group')
        csv_cache('groupes', ['NomGroupe'], data)
        csv = get_csv_cache('groupes')

    if request.method == 'POST':
        selected_group = request.POST.get('group')
        cache.set('selected_group', selected_group)
        return redirect('/saisir_abs/')

    return render(request, 'epresence_api/choisir_groupe_abs.html', {'first_name': user.first_name, 'last_name': user.last_name, 'groupes': csv})
  
  

# Afficher les matière
def choisir_matiere(request):
    csv = get_csv_cache('matiere')
    id = cache.get('id')
    if id is None:
        return redirect('/login/')
    user = User.objects.get(username=id)
    
    if csv is None:
        matieres = Matiere.objects.filter(id_professor=user.id)
        data = Seance.objects.filter(id_matiere__in=matieres).values_list('id_matiere', 'date', 'heure_debut', 'heure_fin', 'salle', 'type_cours')
        new_data = []
        for row in data:
            matiere_obj = Matiere.objects.get(pk=row[0])
            new_row = (str(matiere_obj), row[1], row[2], row[3], row[4], row[5])
            new_data.append(new_row)
        csv_cache('matiere', ['Matiere', 'Date', 'Heure_debut', 'Heure_fin', 'Salle', 'Type_cours'], new_data)
        csv = get_csv_cache('matiere')

    if request.method == 'POST':
        selected_matiere = request.POST.get('matiere')
        cache.set('selected_matiere', selected_matiere)
        return redirect('/saisir_note/')  # Ajustez cette redirection selon vos besoins

    return render(request, 'epresence_api/choisir_matiere.html', {'first_name': user.first_name, 'last_name': user.last_name, 'matiere': csv})
