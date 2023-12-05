import React, { useState, useEffect } from 'react';
import axios from 'axios';
import DetallesLugar from '../components/DetallesLugar';
import Navbar from '../components/Navbar';
import '../styles/Home.css';

function Home() {
  const [lugares, setLugares] = useState([]);
  const [selectedLugar, setSelectedLugar] = useState(null);
  const [searchTerm, setSearchTerm] = useState('');

  useEffect(() => {
    // Llamada a la API para obtener la lista de lugares.
    const apiUrl = 'http://localhost:5000/lugares';

    axios.get(apiUrl)
      .then(response => {
        setLugares(response.data.lugares);
      })
      .catch(error => {
        console.error('Error fetching data:', error);
      });
  }, []); // Se ejecutará al montar el componente.

  const handleComoLlegar = (lugar) => {
    setSelectedLugar(lugar);
  };

  const handleCloseDetalles = () => {
    setSelectedLugar(null);
  };

  const handleSearchChange = (searchTerm) => {
    setSearchTerm(searchTerm);
  };

  const filteredLugares = lugares.filter(lugar =>
    lugar.Nombre.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="home-container">
      <Navbar onSearchChange={handleSearchChange} />
      <div className="container">
        {filteredLugares.map((lugar) => (
          <div key={lugar.id} className="card">
            <div className='card1'>
              {lugar.Imagen && (
                <div id='carta'>
                <img id='imagenn' src={`http://localhost:5000/${lugar.Imagen}`} alt={lugar.Nombre} className="card-image" />
                </div>
              )}
              
                <h2>{lugar.Nombre}</h2>
                <button onClick={() => handleComoLlegar(lugar)} className="btn">
                  Cómo llegar
                </button>
              
            </div>
          </div>
        ))}
      </div>
      {selectedLugar && (
        <DetallesLugar lugar={selectedLugar} onClose={handleCloseDetalles} />
      )}
    </div>
  );
}

export default Home;
