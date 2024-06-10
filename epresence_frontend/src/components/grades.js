// Grades.js
import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import styles from '../assets/styles/grades.module.css';

const Grades = () => {
  const [isDashboardVisible, setDashboardVisible] = useState(false);

  const modules = [
    {
      moduleName: 'Ingénieurie objet',
      subjects: [
        { name: 'AOO & langage Java', grade: 10, coefficient: 32 },
        { name: 'UML', grade: 10, coefficient: 24 },
        { name: 'Projet', grade: 10, coefficient: 20 },
      ],
    },
    {
      moduleName: 'Données',
      subjects: [
        { name: 'SGBD', grade: 10, coefficient: 28 },
        { name: 'BI', grade: 10, coefficient: 34 },
      ],
    },
    {
      moduleName: 'Réseaux et Cybersécurité',
      subjects: [
        { name: 'Configuration de base', grade: 10, coefficient: 32 },
        { name: 'Routage et commutations', grade: 10, coefficient: 24 },
        { name: 'Introduction à la Cybersécurité', grade: 10, coefficient: 20 },
      ],
    },
    {
      moduleName: 'Maths générales',
      subjects: [
        { name: 'Calcul matriciel', grade: 10, coefficient: 10 },
        { name: 'Analyse générale', grade: 10, coefficient: 10 },
        { name: 'Statistiques et systèmes stochastiques', grade: 10, coefficient: 28 },
        { name: 'Analyse numérique et calcul scientifique', grade: 10, coefficient: 20 },
        { name: 'Projet', grade: 10, coefficient: 12 },
      ],
    },
    {
      moduleName: 'Compétences Humaines, Economiques et Sociales',
      subjects: [
        { name: 'Gestion de projet', grade: 10, coefficient: 10 },
        { name: 'DDRS', grade: 10, coefficient: 10 },
        { name: 'Savoir communiquer', grade: 10, coefficient: 28 },
        { name: 'Journée de l\'ingénieur', grade: 10, coefficient: 20 },
      ],
    },
    {
      moduleName: 'Anglais',
      subjects: [
        { name: 'Anglais', grade: 10, coefficient: 24 },
      ],
    },
  ];

  const calculateAverage = (subjects) => {
    const totalWeightedGrades = subjects.reduce((acc, subject) => acc + subject.grade * subject.coefficient, 0);
    const totalCoefficients = subjects.reduce((acc, subject) => acc + subject.coefficient, 0);
    return (totalWeightedGrades / totalCoefficients).toFixed(2);
  };

  const toggleDashboard = () => {
    setDashboardVisible(!isDashboardVisible);
  };

  return (

    <div className={styles.gradesContainer}>

      <div className={`dashboard ${isDashboardVisible ? 'visible' : 'hidden'}`}>
      <div className="sidebar">
        <h2>Menu</h2>
        <ul>
          <li><a href="/">Retour en accueil</a></li>
          <li><a href="/logout">Déconnexion</a></li>
        </ul>
      </div>
      <div className="main-content">
        <div className="container mt-5">
          <h1 className="page-title text-center mb-4">Mes Notes</h1>
          <div className="row justify-content-center">
            {modules.map((module, index) => (
              <div key={index} className="col-md-4 mb-4">
                <div className="card p-3">
                  <h3 className="module-title text-center">{module.moduleName}</h3>
                  <ul className="list-group list-group-flush">
                    {module.subjects.map((subject, idx) => (
                      <li key={idx} className="list-group-item">
                        <div className="d-flex justify-content-between">
                          <span className="subject-name">{subject.name}</span>
                          <span className="subject-grade">{subject.grade}/20</span>
                          <span className="subject-coef">{subject.coefficient}</span>
                        </div>
                      </li>
                    ))}
                  </ul>
                  <div className="card-footer text-center">
                    <strong>Moyenne de l'UE: {calculateAverage(module.subjects)}</strong>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </div>
      </div>
      </div>

    </div>    
  );
};

export default Grades;
