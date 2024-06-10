import React, { useState, useEffect } from 'react';
import ReactPaginate from 'react-paginate';
import styles from '../assets/styles/ResultatTable.module.css';

// Fonction pour générer des données aléatoires
const generateRandomResults = (num) => {
  const results = [];
  for (let i = 1; i <= num; i++) {
    results.push({
      ue: `UE${Math.ceil(i / 5)}`,
      matiere: `Matière${i}`,
      note_partiel: (Math.random() * 20).toFixed(2),
      note_tp: i % 2 === 0 ? (Math.random() * 20).toFixed(2) : null, // Une note sur deux a une note de TP
      note_globale: (Math.random() * 20).toFixed(2)
    });
  }
  return results;
};

const StudentResultsTable = () => {
  const [results, setResults] = useState([]);
  const [currentPage, setCurrentPage] = useState(0);
  const [formFields, setFormFields] = useState({
    anneeUniversitaire: '',
    filiere: 'IR',
  });

  const itemsPerPage = 15;

  useEffect(() => {
    // Remplacez la requête API par des données aléatoires
    const randomResults = generateRandomResults(100); // Génère 100 résultats aléatoires
    setResults(randomResults);
  }, []);

  const handleFormChange = (e) => {
    const { name, value } = e.target;
    setFormFields({
      ...formFields,
      [name]: value,
    });
  };

  const handlePageChange = (selectedItem) => {
    setCurrentPage(selectedItem.selected);
  };

  const offset = currentPage * itemsPerPage;
  const currentPageData = results.slice(offset, offset + itemsPerPage);

  return (
    <div className={styles.ResultTableContainer}>
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
      </form>
      <table>
        <thead>
          <tr>
            <th>UE</th>
            <th>Matière</th>
            <th>Note Partiel</th>
            <th>Note TP</th>
            <th>Note Globale</th>
          </tr>
        </thead>
        <tbody>
          {currentPageData.map((result, index) => (
            <tr key={index}>
              <td>{result.ue}</td>
              <td>{result.matiere}</td>
              <td>{result.note_partiel}</td>
              <td>{result.note_tp !== null ? result.note_tp : 'N/A'}</td>
              <td>{result.note_globale}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <ReactPaginate
        previousLabel={"previous"}
        nextLabel={"next"}
        breakLabel={"..."}
        pageCount={Math.ceil(results.length / itemsPerPage)}
        marginPagesDisplayed={2}
        pageRangeDisplayed={5}
        onPageChange={handlePageChange}
        containerClassName={"pagination"}
        activeClassName={"active"}
      />
    </div>
  );
};

export default StudentResultsTable;
