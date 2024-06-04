# Projet_1A_IR2

## Initialiser le repo

```
conda create -n PROJET
conda activate PROJET
```

## Installer les dépendances de Django

```
conda install django
conda install whitenoise
pip install python-decouple
pip install djangorestframework
pip install django-cors-headers
```
ou

```
pip install -r requirements.txt
```

copier le fichier .env dans la racine du projet (/sonic)

## Installer les dépendances de node/React

```
npm install
```

On peut alors tester 

```
npm start
```

Si problème :

```
npm install bootstrap
npm install axios
```

/ ! \ doit etre effectuer au niveau de package-lock.json

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

ou 

```
docker compose -f sonic/docker-compose.yaml up -d --build backend
```
