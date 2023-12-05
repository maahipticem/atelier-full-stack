import { Link } from "react-router-dom";
import "./Carte.css";

function Carte({ medecin }) {
  return (
    <div className="containerCarte">
      <h1>
        {medecin.name} {medecin.firstName}
      </h1>
      <Link to={`/medecins/${medecin.id}`}>
        <img
          className="containerImage"
          src={medecin.urlToImage}
          alt={medecin.name}
        />
      </Link>
    </div>
  );
}

export default Carte;
