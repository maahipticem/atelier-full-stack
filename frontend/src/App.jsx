import { useState, useEffect } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import Carte from "./components/Carte";
import Navbar from "./components/Navbar";

import "./App.css";

function App() {
  const [medecins, setMedecins] = useState([]);
  const [filterParams, setFilterParams] = useState("0");

  const updateFilterParams = (value) => {
    setFilterParams(value);
  };

  const getQuery = () => {
    let query = "";

    if (filterParams !== "0") {
      query += `?hopital=${filterParams}`;
    }

    return query;
  };

  useEffect(() => {
    const query = getQuery();

    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/api/medecins${query}`)
      .then((res) => setMedecins(res.data))
      .catch((err) => console.error(err));
  }, [filterParams]);
  return (
    <div className="containerApp">
      <div>
        <div>
          <a href="#hautDePage">
            <button type="button" className="hautDePage">
              Haut de page
            </button>
          </a>
        </div>
        <img
          src="frontend/src/assets/dd67a68a39a2cd8223ac1c328e7d030e.jpg"
          alt="logo"
        />
        <div>
          <h2 className="titreH2">Presentation de l'equipe </h2>
        </div>
        <Navbar updateFilterParams={updateFilterParams} />
      </div>

      <div className="container">
        {medecins.map((medecin) => (
          <Carte key={medecin.id} medecin={medecin} />
        ))}
      </div>
      <div className="buttonHome">
        <Link to="/">retour</Link>
      </div>
    </div>
  );
}

export default App;
