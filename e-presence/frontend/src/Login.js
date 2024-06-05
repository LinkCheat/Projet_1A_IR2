import React, { useState } from 'react';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [success, setSuccess] = useState('');

  const handleSubmit = async (event) => {
    event.preventDefault();
    setError('');
    setSuccess('');
    try {
      const response = await axios.post('http://localhost:8000/login/', {
        email,
        password,
      });
      setSuccess('Login successful!');
      // Vous pouvez également stocker le token de l'utilisateur ici si nécessaire
    } catch (error) {
      if (error.response && error.response.data) {
        setError(error.response.data.message);
      } else {
        setError(error.response.data.message);
      }
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
            {error && <p className="mt-3 text-center text-danger">{error}</p>}
            {success && <p className="mt-3 text-center text-success">{success}</p>}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;
