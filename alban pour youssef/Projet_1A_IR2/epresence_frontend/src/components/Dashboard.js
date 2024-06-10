import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import '../assets/styles/Dashboard.css';

const Dashboard = () => {
  return (
    <div className="dashboard-container">
      <h2>Tableau de bord</h2>
      <div className="dashboard-content">
        <div className="card">
          <div className="card-body">
            <h5 className="card-title">Section 1</h5>
            <p className="card-text">Contenu de la section 1.</p>
          </div>
        </div>
        <div className="card">
          <div className="card-body">
            <h5 className="card-title">Section 2</h5>
            <p className="card-text">Contenu de la section 2.</p>
          </div>
        </div>
        <div className="card">
          <div className="card-body">
            <h5 className="card-title">Section 3</h5>
            <p className="card-text">Contenu de la section 3.</p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Dashboard;
