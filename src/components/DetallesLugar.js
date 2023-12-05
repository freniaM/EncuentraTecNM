import React from 'react';
import '../styles/DetallesLugar.css';

// Función ficticia para obtener la ruta del gif


function DetallesLugar({ lugar, onClose }) {

  const gifPath = lugar && lugar.Gif;

  function obtenerRutaGif(lugarId) {

    return `http://localhost:5000/${lugar.Gif}`;
  }
  return (
    <div className="detalles-container">
      <div className="detalles-content">
        <h2 id="nombre-lugar">{lugar.Nombre}</h2>
        <p id="horario">Horario: {lugar.Horario}</p>
        <p id="descripcion">Descripción: {lugar.Descripción}</p>
        <p id='observaciones'>Observaciones: {lugar.Observaciones}</p>
        {gifPath && <img src={obtenerRutaGif(lugar.id)} alt="GIF" className="detalles-gif" />}
        <button onClick={onClose} className="close-button" id="boton">Cerrar Detalles</button>
      </div>
    </div>
  );
}

export default DetallesLugar;
