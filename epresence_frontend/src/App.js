import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './components/Login';
import Conseils from './components/Conseils';
import ResetPassword from './components/ResetPassword';
import ChangePassword from './components/ChangePassword';
import Dashboard from './components/Dashboard';
import StudentsTable from './components/StudentsTable';
import AbsencesTable from './components/AbsencesTable';
import ResultatTable from './components/ResultatTable';
import './assets/styles/App.css';
import AccueilEtudiant from "./components/accueil-e";
import Grades from "./components/grades";
import Absences from "./components/absences";


function App() {
  return (
    <Router>
      <div className="App">
        <Routes>
          <Route path="/login" element={<Home />} />
          <Route path="/reset-password" element={<ResetPassword />} />
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/accueil-etu" element={<AccueilEtudiant />} />
          <Route path="/grades" element={<Grades />} />
          <Route path="/absence-etu" element={<Absences />} />

        </Routes>
      </div>
    </Router>
  );
}

const Home = () => {
  return (
    <div className="home-container">
      <Conseils />
      <Login />
    </div>
  );
};

export default App;
