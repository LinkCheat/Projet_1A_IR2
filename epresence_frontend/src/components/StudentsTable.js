import React, { useState, useEffect } from 'react';
import axios from 'axios';
import ReactPaginate from 'react-paginate';
import styles from '../assets/styles/StudentsTable.module.css';  // Assurez-vous que le chemin est correct


// Fonction pour générer des données aléatoires
const generateRandomStudents = (num) => {
  const students = [];
  for (let i = 1; i <= num; i++) {
    students.push({
      code_etudiant: `E${i.toString().padStart(4, '0')}`,
      nom: `Nom${i}`,
      prenom: `Prénom${i}`,
      groupe: `Groupe${Math.ceil(i / 5)}`,
    });
  }
  return students;
};

const StudentsTable = () => {
  const [students, setStudents] = useState([]);
  const [notes, setNotes] = useState({});
  const [currentPage, setCurrentPage] = useState(0);
  const [formFields, setFormFields] = useState({
    anneeUniversitaire: '',
    filiere: 'IR',
    matiere: '',
    typeControle: 'TP',
  });

  const itemsPerPage = 10;

  useEffect(() => {
    // Remplacez la requête API par des données aléatoires
    const randomStudents = generateRandomStudents(100); // Génère 100 étudiants aléatoires
    setStudents(randomStudents);
  }, []);

  const handleNoteChange = (codeEtudiant, note) => {
    // Validation pour n'accepter que des chiffres
    if (!isNaN(note) && note.length <= 3) {
      setNotes(prevNotes => ({
        ...prevNotes,
        [codeEtudiant]: note,
      }));
    }
  };

  const handleFormChange = (e) => {
    const { name, value } = e.target;
    setFormFields({
      ...formFields,
      [name]: value,
    });
  };

  const handleSubmit = () => {
    console.log("Notes submitted:", notes);
    alert("Notes submitted successfully!");
  };

  const handlePageChange = (selectedItem) => {
    setCurrentPage(selectedItem.selected);
  };

  const offset = currentPage * itemsPerPage;
  const currentPageData = students.slice(offset, offset + itemsPerPage);

  return (
    <div className={styles.StudentsTableContainer}>
      <form>
        <label>
          Années universitaire:
          <input
            type="text"
            name="anneeUniversitaire"
            value={formFields.anneeUniversitaire}
            onChange={handleFormChange}
          />
        </label>
        <label>
          Filière:
          <input
            type="text"
            name="filiere"
            value={formFields.filiere}
            readOnly
          />
        </label>
        <label>
          Matière:
          <input
            type="text"
            name="matiere"
            value={formFields.matiere}
            onChange={handleFormChange}
          />
        </label>
        <label>
          Type du contrôle:
          <select
            name="typeControle"
            value={formFields.typeControle}
            onChange={handleFormChange}
          >
            <option value="TP">TP</option>
            <option value="TD">TD</option>
          </select>
        </label>
      </form>
      <table>
        <thead>
          <tr>
            <th>Code Étudiant</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Groupe</th>
            <th>Note</th>
          </tr>
        </thead>
        <tbody>
          {currentPageData.map(student => (
            <tr key={student.code_etudiant}>
              <td>{student.code_etudiant}</td>
              <td>{student.nom}</td>
              <td>{student.prenom}</td>
              <td>{student.groupe}</td>
              <td>
                <input
                  type="text"
                  value={notes[student.code_etudiant] || ''}
                  onChange={(e) => handleNoteChange(student.code_etudiant, e.target.value)}
                />
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      <div className="button-container">
        <button onClick={handleSubmit}>Soumettre</button>
      </div>
      <ReactPaginate
        previousLabel={"previous"}
        nextLabel={"next"}
        breakLabel={"..."}
        pageCount={Math.ceil(students.length / itemsPerPage)}
        marginPagesDisplayed={2}
        pageRangeDisplayed={5}
        onPageChange={handlePageChange}
        containerClassName={"pagination"}
        activeClassName={"active"}
      />
    </div>
  );
};

export default StudentsTable;
