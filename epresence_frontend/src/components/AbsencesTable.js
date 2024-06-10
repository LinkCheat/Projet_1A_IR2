import React, { useState, useEffect } from 'react';
import ReactPaginate from 'react-paginate';
import styles from '../assets/styles/AbsencesTable.module.css';

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

const AbsencesTable = () => {
  const [students, setStudents] = useState([]);
  const [absences, setAbsences] = useState({});
  const [currentPage, setCurrentPage] = useState(0);
  const [formFields, setFormFields] = useState({
    anneeUniversitaire: '',
    filiere: 'IR',
    seance: '',
    groupe: '',
  });

  const itemsPerPage = 10;

  useEffect(() => {
    // Remplacez la requête API par des données aléatoires
    const randomStudents = generateRandomStudents(100); // Génère 100 étudiants aléatoires
    setStudents(randomStudents);
  }, []);

  const handleAbsenceChange = (codeEtudiant) => {
    setAbsences(prevAbsences => ({
      ...prevAbsences,
      [codeEtudiant]: !prevAbsences[codeEtudiant],
    }));
  };

  const handleFormChange = (e) => {
    const { name, value } = e.target;
    setFormFields({
      ...formFields,
      [name]: value,
    });
  };

  const handleSubmit = () => {
    console.log("Absences submitted:", absences);
    alert("Absences submitted successfully!");
  };

  const handlePageChange = (selectedItem) => {
    setCurrentPage(selectedItem.selected);
  };

  const offset = currentPage * itemsPerPage;
  const currentPageData = students.slice(offset, offset + itemsPerPage);

  return (
    <div className={styles.homeContainer}>
      <form>
        <label>
          Année Universitaire:
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
          Séance:
          <input
            type="text"
            name="seance"
            value={formFields.seance}
            onChange={handleFormChange}
          />
        </label>
        <label>
          Groupe:
          <input
            type="text"
            name="groupe"
            value={formFields.groupe}
            onChange={handleFormChange}
          />
        </label>
      </form>
      <table>
        <thead>
          <tr>
            <th>Code Étudiant</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Groupe</th>
            <th>Absent</th>
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
                  type="checkbox"
                  checked={absences[student.code_etudiant] || false}
                  onChange={() => handleAbsenceChange(student.code_etudiant)}
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

export default AbsencesTable;
