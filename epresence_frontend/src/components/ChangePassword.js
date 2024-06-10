import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import '../assets/styles/ChangePassword.css'; // Assurez-vous que le fichier CSS est importé

const ChangePassword = () => {
  const [password, setPassword] = useState('');
  const [confirmPassword, setConfirmPassword] = useState('');
  const [message, setMessage] = useState('');
  const navigate = useNavigate();

  const handleChangePassword = async (event) => {
    event.preventDefault();
    if (password !== confirmPassword) {
      setMessage('Les mots de passe ne correspondent pas');
      return;
    }
    try {
      const response = await axios.post('http://localhost:8000/api/change-pass/', { password });
      setMessage(response.data.message);
      if (response.status === 200) {
        navigate('/login');
      }
    } catch (error) {
      setMessage(error.response.data.message);
    }
  };

  return (
    <div className="page-container">
      <div className="change-password-container">
        <h2>Changer le mot de passe</h2>
        <form onSubmit={handleChangePassword}>
          <div className="form-group">
            <label htmlFor="password" className="form-label">Nouveau mot de passe</label>
            <input
              type="password"
              className="form-control"
              id="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
          </div>
          <div className="form-group">
            <label htmlFor="confirm-password" className="form-label">Confirmez le mot de passe</label>
            <input
              type="password"
              className="form-control"
              id="confirm-password"
              value={confirmPassword}
              onChange={(e) => setConfirmPassword(e.target.value)}
            />
          </div>
          <button type="submit" className="change-button">Changer le mot de passe</button>
        </form>
        {message && <p className="message">{message}</p>}
      </div>
    </div>
  );
};

export default ChangePassword;
