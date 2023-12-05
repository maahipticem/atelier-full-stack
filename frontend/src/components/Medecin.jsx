import React from "react";
import { useLoaderData, Link } from "react-router-dom";
import "./Medecin.css";

function Medecin() {
  const medecin = useLoaderData();
  return (
    <div>
      <div className="buttonDiv">
        <div>
          <Link to="/App">
            <button className="button" type="button">
              retour presentation équipe
            </button>
          </Link>
        </div>
        <div>
          <Link to="/">
            <button className="button" type="button">
              retour Acceuil
            </button>
          </Link>
        </div>
      </div>
      <div className="medecinPage">
        <h2 className="titreH2">MON CHIRUR'GIEN</h2>
        <div className="fiche">
          <div className="containerImage">
            <p>
              {medecin.name} {medecin.firstName}
            </p>
            <img
              className="image"
              src={medecin.urlToImage}
              alt={medecin.name}
            />
            <p> Specialité : {medecin.specialite}</p>
            <p className="descripitif">Descriptif : {medecin.descriptif}</p>
            <p> DISPONIBLE A PARTIR DU: {medecin.disponibilite}</p>
          </div>
        </div>
        <Link to="/App" className="buttonMedecin">
          retour presentation équipe
        </Link>
        <p className="paragrapheOu">Ou</p>
        <Link to="/" className="buttonMedecin">
          retour Acceuil
        </Link>
      </div>
    </div>
  );
}

export default Medecin;
