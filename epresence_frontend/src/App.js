import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './components/Login';
import Conseils from './components/Conseils';
import './assets/styles/App.css';

function App() {
  return (
    <Router>
      <div className="App">
        <Routes>
          <Route path="/" element={<Home />} />
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

