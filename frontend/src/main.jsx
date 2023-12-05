import React from "react";
import ReactDOM from "react-dom/client";
import axios from "axios";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import MedecinPage from "./pages/MedecinPage";
import App from "./App";
import EpisodePage from "./pages/EpisodePage";
import FormulairePage from "./pages/FormulairePage";
import Home from "./pages/Home";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Home />,
    loader: () => {
      return axios
        .get(`${import.meta.env.VITE_BACKEND_URL}/api/medecins`)
        .then((res) => res.data)
        .catch((err) => console.error(err));
    },
  },
  {
    path: "/medecins/:medecinId",
    element: <MedecinPage />,
    loader: async ({ params }) => {
      const medecin = await axios
        .get(
          `${import.meta.env.VITE_BACKEND_URL}/api/medecins/${params.medecinId}`
        )
        .then((res) => res.data);
      return medecin;
    },
  },
  {
    path: "/episodes",
    element: <EpisodePage />,
    loader: async () => {
      const episode = await axios
        .get(`${import.meta.env.VITE_BACKEND_URL}/api/episodes`)
        .then((res) => res.data);
      return episode;
    },
  },
  {
    path: "/formulaires",
    element: <FormulairePage />,
    loader: async () => {
      const formulaire = await axios
        .get(`${import.meta.env.VITE_BACKEND_URL}/api/formulaires`)
        .then((res) => res.data);
      return formulaire;
    },
  },

  {
    path: "/app",
    element: <App />,
    loader: async () => {
      const medecins = await axios
        .get(`${import.meta.env.VITE_BACKEND_URL}/api/medecins`)
        .then((res) => res.data);
      return medecins;
    },
  },
]);

const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
