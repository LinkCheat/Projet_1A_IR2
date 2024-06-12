import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import '../assets/styles/Absences.css';

const Absences = () => {
  const absences = [
    {
      subject: 'Calcul matriciel',
      date: '2024-06-01',
      hours: 2,
      justified: false
    },
    {
      subject: 'Savoir communiquer',
      date: '2024-06-03',
      hours: 3,
      justified: true
    },
    {
      subject: 'Anglais',
      date: '2024-06-05',
      hours: 1,
      justified: false
    },
  ];

  const [absenceData, setAbsenceData] = useState(absences);

  const handleJustify = (index) => {
    const newAbsenceData = [...absenceData];
    newAbsenceData[index].justified = !newAbsenceData[index].justified;
    setAbsenceData(newAbsenceData);
  };

  const totalHours = absenceData.reduce((acc, absence) => acc + absence.hours, 0);

  return (
    <div className="absence-page container mt-5">
      <h1 className="text-center mb-4">Absences</h1>
      <div className="total-hours text-center mb-4">
        <strong>Total des heures d'absence: {totalHours}</strong>
      </div>
      <div className="absence-details">
        {absenceData.map((absence, index) => (
          <div key={index} className="card mb-3">
            <div className="card-body">
              <h5 className="card-title">{absence.subject}</h5>
              <p className="card-text">Date: {absence.date}</p>
              <p className="card-text">Heures: {absence.hours}</p>
              <button
                className={`btn ${absence.justified ? 'btn-success' : 'btn-danger'}`}
                onClick={() => handleJustify(index)}
              >
                {absence.justified ? 'Justifiée' : 'Non justifiée'}
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Absences;
