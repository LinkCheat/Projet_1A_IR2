import MySQLdb
from django.contrib.auth.models import User

# Connexion à la base de données MySQL
db = MySQLdb.connect(host="localhost", user="yourusername", passwd="yourpassword", db="student")
cursor = db.cursor()

# Exécuter la requête pour récupérer les utilisateurs
cursor.execute("SELECT Nom, Prenom, Email, MotDePasse FROM utilisateurs")
users = cursor.fetchall()

for user in users:
    nom, prenom, email, mot_de_passe = user
    # Création de l'utilisateur Django
    User.objects.create_user(username=email, email=email, password=mot_de_passe, first_name=prenom, last_name=nom)

# Fermer la connexion
db.close()
