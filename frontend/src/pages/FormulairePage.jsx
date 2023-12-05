import React from "react";
import { Link } from "react-router-dom";
import Formulaire from "../components/Formulaire";

import "./FormulairePage.css";

function FormulairePage() {
  return (
    <div>
      <div>
        <h2 className="titreH2">INTRANET</h2>
      </div>
      <div className="link">
        <div>
          <Link to="/">
            <button className="buttonForm" type="button">
              retour Acceuil
            </button>
          </Link>
        </div>
        <div>
          <Link to="/App">
            <button className="buttonForm" type="button">
              Presentation de l'équipe
            </button>
          </Link>
        </div>
      </div>
      <div>
        <Formulaire />
      </div>
    </div>
  );
}

export default FormulairePage;
