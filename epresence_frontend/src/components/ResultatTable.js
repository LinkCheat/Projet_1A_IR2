import React, { useState, useEffect } from 'react';
import ReactPaginate from 'react-paginate';
import '../assets/styles/StudentsTable.css';

// Fonction pour générer des données aléatoires
const generateRandomResults = (num) => {
  const results = [];
  for (let i = 1; i <= num; i++) {
    results.push({
      ue: `UE${Math.ceil(i / 5)}`,
      matiere: `Matière${i}`,
      note_partiel: (Math.random() * 20).toFixed(2),
      note_tp: i % 2 === 0 ? (Math.random() * 20).toFixed(2) : null, // Une note sur deux a une note de TP
      note_globale: (Math.random() * 20).toFixed(2),
      motif_absence: Math.random() > 0.8 ? "Maladie" : "" // 20% chance of absence due to illness
    });
  }
  return results;
};


const StudentResultsTable = () => {
  const [results, setResults] = useState([]);
  const [absences, setAbsences] = useState({});
  const [currentPage, setCurrentPage] = useState(0);
  const [formFields, setFormFields] = useState({
    anneeUniversitaire: '',
    filiere: 'IR',
  });

  const handleAbsenceChange = (index, value) => {
    setAbsences(prevAbsences => ({
      ...prevAbsences,
      [index]: value
    }));
  };
  

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
    <div className="container">
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Groupe TD</th>
                    <th>Groupe TP</th>
                    <th>Note</th>
                </tr>
            </thead>
            <tbody>
                {/* Dynamic row generation goes here */}
            </tbody>
        </table>
        <div className="button-container">
            <button>Modifier</button>
            <button>Enregistrer</button>
            <button>Valider</button>
        </div>
    </div>
);

  
};

export default StudentResultsTable;
