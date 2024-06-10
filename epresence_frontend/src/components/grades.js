import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import '../assets/styles/grades.css';

const Grades = () => {
  // Example data for grades
  const grades = [
    { subject: 'Maths Signal', grade: '15' },
    { subject: 'Java', grade: '13' },
    { subject: 'C', grade: '16' },
    { subject: 'Savoir Communiquer', grade: '14' },
    { subject: 'SGBD', grade: '12' },
  ];

  return (
    <div className="container mt-5">
      <h1 className="page-title text-center mb-4">Notes de l'Étudiant</h1>
      <div className="row justify-content-center">
        {grades.map((item, index) => (
          <div key={index} className="col-md-2 mb-3">
            <div className="card text-center p-3">
              <h5 className="card-title">{item.subject}</h5>
              <p className="card-text">{item.grade}</p>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Grades;
