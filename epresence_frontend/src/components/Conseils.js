import React, { useEffect, useState } from 'react';
import Papa from 'papaparse';
import '../assets/styles/Conseils.css';

const Conseils = () => {
  const [data, setData] = useState([]);
  const [currentIndex, setCurrentIndex] = useState(0);

  useEffect(() => {
    const fetchCSV = async () => {
      const response = await fetch('../cons_env.csv');
      const reader = response.body.getReader();
      const result = await reader.read();
      const decoder = new TextDecoder('utf-8');
      const csvData = decoder.decode(result.value);
      const parsedData = Papa.parse(csvData, { header: true });
      setData(parsedData.data);
    };

    fetchCSV();
  }, []);

  useEffect(() => {
    const interval = setInterval(() => {
      setCurrentIndex((prevIndex) => (prevIndex + 1) % data.length);
    }, 10000); // Change every 10 seconds

    return () => clearInterval(interval);
  }, [data]);

  if (data.length === 0) {
    return <div>Loading...</div>;
  }

  return (
    <div className="conseils-container">
      <h2>Conseil Environnemental</h2>
      <div>
        <strong>{data[currentIndex].Sujet}</strong>
        <p>{data[currentIndex].Conseil}</p>
        <p>{data[currentIndex].Détails}</p>
      </div>
    </div>
  );
};

export default Conseils;
