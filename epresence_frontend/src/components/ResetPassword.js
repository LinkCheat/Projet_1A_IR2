import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import styles from '../assets/styles/ResetPassword.module.css'; // Assurez-vous que le fichier CSS est importé

const ResetPassword = () => {
  const [email, setEmail] = useState('');
  const [message, setMessage] = useState('');
  const navigate = useNavigate();

  const handleResetPassword = async (event) => {
    event.preventDefault();
    try {
      const response = await axios.post('http://localhost:8000/api/reset-pass/', { email });
      setMessage(response.data.message);
    } catch (error) {
      setMessage(error.response.data.message);
    }
  };

  const handleBackToLogin = () => {
    navigate('/login');
  };

  return (
    <div className={styles.ResetPasswordContainer}>
      <div className="reset-password-container">
        <h2>Réinitialiser le mot de passe</h2>
        <form onSubmit={handleResetPassword}>
          <div className="form-group">
            <label htmlFor="email" className="form-label">Adresse e-mail</label>
            <input
              type="email"
              className="form-control"
              id="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
          </div>
          <button type="submit" className="reset-button">Envoyer</button>
          <button type="button" className="back-button" onClick={handleBackToLogin}>Retour à la connexion</button>
        </form>
        {message && <p className="message">{message}</p>}
      </div>
    </div>
  );
};

export default ResetPassword;
