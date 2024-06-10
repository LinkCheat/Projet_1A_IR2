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

function App() {
  return (
    <Router>
      <div className="App">
        <Routes>
          <Route path="/login" element={<Home />} />
          <Route path="/reset-password" element={<ResetPassword />} />
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/change-password" element={<ChangePassword />} />
          <Route path="/InsererNotes" element={<StudentsTable />} />
          <Route path="/InsererAbs" element={<AbsencesTable />} />
          <Route path="/afficherNotes" element={<ResultatTable />} />
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

