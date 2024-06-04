# Projet_1A_IR2

## Initialiser le repo

```
conda create -n PROJET
conda activate PROJET
```

## Installer les dépendances

```
conda install django
conda install whitenoise
pip install python-decouple
```
ou

```
pip install -r requirements.txt
```

copier le fichier .env dans /sonic/sonic (au même niveau que settings.py)

## Répartition du travail

1. Frontend
   - Ikram
   - Youssef
   
2. Backend
   - Louis
   - Alban
   - Nicolas

3. DB
   - Clovis
   - Salma

## Lancer le serveur

```
python manage.py collectstatic
python manage.py runserver
```
