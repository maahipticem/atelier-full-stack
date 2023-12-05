import React, { useState } from "react";
import axios from "axios";
import "./Formulaire.css";

function Formulaire() {
  const [nom, setNom] = useState("");
  const [prenom, setPrenom] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleSubmit = (event) => {
    event.preventDefault();
    axios
      .post(`${import.meta.env.VITE_BACKEND_URL}/api/formulaires`, {
        nom,
        prenom,
        email,
        password,
      })
      .catch((err) => console.error(err));
  };
  return (
    <div className="formulaire">
      <form className="form" onSubmit={handleSubmit}>
        <div>
          <label className="label" htmlFor="nom">
            Nom :
            <input
              className="input"
              type="text"
              name="nom"
              id="nom"
              required
              minLength={3}
              maxLength={12}
              value={nom}
              onChange={(event) => setNom(event.target.value)}
            />
          </label>
        </div>
        <div className="formulaire">
          <label className="label" htmlFor="prenom">
            Prénom :
            <input
              className="input"
              type="text"
              name="prenom"
              id="prenom"
              required
              minLength={3}
              maxLength={12}
              value={prenom}
              onChange={(event) => setPrenom(event.target.value)}
            />
          </label>
        </div>
        <div className="formulaire">
          <label className="label" htmlFor="email">
            Email :
            <input
              className="input"
              type="email"
              name="email"
              id="email"
              required
              value={email}
              onChange={(event) => setEmail(event.target.value)}
            />
          </label>
        </div>
        <div className="formulaire">
          <label className="label" htmlFor="password">
            Mot de passe :
            <input
              className="input"
              type="password"
              name="password"
              id="password"
              required
              pattern="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{7,}$"
              onChange={(event) => setPassword(event.target.value)}
              value={password}
            />
          </label>

          <p className="label">
            Le mot de passe doit faire minimum 7 caractères,
            <br /> contenir une majuscule, une minuscule et un chiffre.
          </p>
        </div>
        <div className="formulaire">
          <button type="submit" className="buttonBlanc">
            Connexion
          </button>
        </div>
      </form>
    </div>
  );
}

export default Formulaire;
