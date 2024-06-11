import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# à revoir !!!!
# graphe de l'évo des notes du mois de Juin


data_notes = pd.read_csv('notes_IR_juin.csv')

data_matieres = pd.read_csv('matieresupdated.csv')

data_notes['date_evaluation'] = pd.to_datetime(data_notes['date_evaluation'])

data_notes = data_notes.sort_values(by='date_evaluation')

data = pd.merge(data_notes, data_matieres, left_on='matiere_id', right_on='matiere_id')

print(data.head())

plt.figure(figsize=(12, 6))
sns.barplot(x='date_evaluation', y='note', hue='nom_matiere', data=data, ci=None)

plt.title('Évolution des notes au cours du mois de Juin')
plt.xlabel('Dates d\'évaluation')
plt.ylabel('Notes')
plt.xticks(rotation=45)
plt.legend(title='Matières', bbox_to_anchor=(1.05, 1), loc='upper left')
plt.tight_layout()
plt.show()
