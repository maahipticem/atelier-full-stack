import React from "react";
import { Link } from "react-router-dom";
import Filter from "./Filter";
import "./Navbar.css";

function Navbar({ updateFilterParams }) {
  return (
    <div id="hautDePage" className="navbar">
      <div className="navbarRecherche">
        <Filter
          title="Recherche par hopital :"
          type="hopitals"
          props="adresse"
          updateFilterParams={updateFilterParams}
        />
        <Link to="/episodes">
          <button className="buttonEpisodes" type="button">
            Immersion au Memorial Hospital
          </button>
        </Link>
      </div>
    </div>
  );
}

export default Navbar;
