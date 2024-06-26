import React from 'react';
import { Link } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import '../assets/styles/accueil-e.css';

const AccueilEtudiant = () => {
  return (
    <div className="container mt-5 d-flex flex-column align-items-center"> {/* Modification ici */}
      <h1 className="mb-4 page-title">Mon Espace Étudiant</h1>
      <div className="row justify-content-end mb-3"> {/* Modification ici */}
        <div className="col-md-5">
          <div className="card text-center">
            <div className="card-body">
              <h5 className="card-title">Notes</h5>
              <Link to="/grades" className="btn btn-primary">Mes notes</Link>
            </div>
          </div>
        </div>
      </div>
      <div className="row justify-content-end mb-3"> {/* Modification ici */}
        <div className="col-md-5">
          <div className="card text-center">
            <div className="card-body">
              <h5 className="card-title">Profil</h5>
              <Link to="/profile" className="btn btn-primary">Mon profil</Link>
            </div>
          </div>
        </div>
      </div>
      <div className="row justify-content-end"> {/* Modification ici */}
        <div className="col-md-5">
          <div className="card text-center">
            <div className="card-body">
              <h5 className="card-title">Absences</h5>
              <Link to="/absences" className="btn btn-primary">Mes absences</Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AccueilEtudiant;
