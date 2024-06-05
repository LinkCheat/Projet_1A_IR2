import React, { useState } from 'react';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [message, setMessage] = useState('');

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post('http://localhost:8000/api/login/', {
        email: email,
        password: password,
      });
      setMessage(response.data.message);
    } catch (error) {
      setMessage(error.response?.data?.message || 'Erreur de connexion');
    }
  };

  return (
    <div className="container d-flex align-items-center justify-content-center" style={{ minHeight: "100vh" }}>
      <div className="row justify-content-center w-100">
        <div className="col-md-4">
          <div className="card p-4">
            <img
              className="fit-picture"
              src="./assets/img/Logo.png"
              alt="e-presence" 
            />
            <form onSubmit={handleSubmit}>
              <div className="mb-3">
                <label htmlFor="email" className="form-label">Adresse e-mail</label>
                <input
                  type="email"
                  className="form-control"
                  id="email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                />
              </div>
              <div className="mb-3">
                <label htmlFor="password" className="form-label">Mot de passe</label>
                <input
                  type="password"
                  className="form-control"
                  id="password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                />
              </div>
              <button type="submit" className="btn btn-primary w-100">Se connecter</button>
            </form>
            {message && <p className="mt-3 text-center">{message}</p>}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;
