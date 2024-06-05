import React, { useState } from 'react';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import '../../App.css'; // Assurez-vous que le fichier CSS est importé

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [message, setMessage] = useState('');
  const [isResetPassword, setIsResetPassword] = useState(false);

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post('http://localhost:8000/api/login/', {
        email: email,
        password: password,
      });
      setMessage(response.data.message);
    } catch (error) {
      setMessage(error.response.data.message);
    }
  };

  const handleResetPassword = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post('http://localhost:8000/reset-password/', { email });
      setMessage(response.data.message);
    } catch (error) {
      setMessage(error.response.data.message);
    }
  };

  return (
    <div className="container">
      <h1 className="title">Bienvenue dans E-Presence!</h1>
      <div className="row justify-content-center">
        <div className="col-md-4">
          <div className="card p-4">
            {isResetPassword ? (
              <div>
                <h2>Réinitialiser le mot de passe</h2>
                <form onSubmit={handleResetPassword}>
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
                  <button type="submit" className="btn btn-primary w-100">Envoyer</button>
                  <button type="button" className="btn btn-secondary w-100 mt-2" onClick={() => setIsResetPassword(false)}>Retour</button>
                </form>
              </div>
            ) : (
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
                  <button type="button" className="forgot-password-link btn btn-link p-0" onClick={() => setIsResetPassword(true)}>Mot de passe oublié ?</button>
                </div>
                <button type="submit" className="btn btn-primary w-100">Se connecter</button>
              </form>
            )}
            {message && <p className="mt-3 text-center">{message}</p>}
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;