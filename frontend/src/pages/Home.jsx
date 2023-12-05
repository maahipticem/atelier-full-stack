import React from "react";
import { Outlet, Link } from "react-router-dom";
import "./Home.css";

function Home() {
  return (
    <div>
      <div className="titre">
        <h1>MEMORIAL HOSPITAL</h1>
      </div>

      <Outlet />
      <div className="home">
        <Link to="./App">
          <button className="button" type="button">
            Présentation de l'equipe
          </button>
        </Link>
        <Link to="/episodes" className="buttonEpisodes">
          <button className="button" type="button">
            Immersion à l'hopital
          </button>
        </Link>
        <Link to="/formulaires" className="buttonFormulaires">
          <button className="button" type="button">
            Accès à l'intranet salarié
          </button>
        </Link>
      </div>
      <div className="centreImage">
        <img
          className="image"
          src="/src/assets/téléchargement-removebg-preview.png"
          alt="C'est une bonne journée pour sauver des vies"
        />
      </div>
    </div>
  );
}

export default Home;
