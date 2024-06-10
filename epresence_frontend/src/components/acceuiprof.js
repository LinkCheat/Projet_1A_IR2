import React, { useState } from 'react';
import styles from '../assets/styles/acceuilprof.module.css';

function Dashboard() {
  const [sidebarExpanded, setSidebarExpanded] = useState(false);
  const [content, setContent] = useState({
    title: 'Mon Espace E-presence',
    detail: ''
  });

  const sections = {
    evaluation: { title: 'Évaluation', detail: 'Manage evaluations here.' },
    absences: { title: 'Absences', detail: 'Manage absences here.' },
    parametres: { title: 'Paramètres', detail: 'Adjust settings here.' }
  };

  function toggleSidebar() {
    setSidebarExpanded(!sidebarExpanded);
  }

  function changeContent(section) {
    setContent({
      title: sections[section].title,
      detail: sections[section].detail
    });
  }

  return (
    <div className={styles.homeContainer}>
      <header>
        <button id="menu-toggle" onClick={toggleSidebar}>☰</button>
        <select id="year-select">
          <option>2023/2024</option>
          <option>2022/2023</option>
        </select>
        <div id="user-info">
          <span>E-PRESENCE</span>
          <span>USER</span>
        </div>
      </header>
      <div className={`sidebar ${sidebarExpanded ? 'expanded' : ''}`} id="sidebar">
        <a href="#" onClick={() => changeContent('evaluation')}>Évaluation</a>
        <a href="#" onClick={() => changeContent('absences')}>Absences</a>
        <a href="#" onClick={() => changeContent('parametres')}>Paramètres</a>
      </div>
      <div className="main-content" id="main-content" style={{ marginLeft: sidebarExpanded ? '250px' : '0' }}>
        <h2>{content.title}</h2>
        <p>{content.detail}</p>
      </div>
    </div>
  );
}

export default Dashboard;
