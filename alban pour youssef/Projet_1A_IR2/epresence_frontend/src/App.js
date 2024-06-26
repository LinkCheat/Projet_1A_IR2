import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './components/Login';
import Conseils from './components/Conseils';
import ResetPassword from './components/ResetPassword';
import ChangePassword from './components/ChangePassword';
import Dashboard from './components/Dashboard';
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

