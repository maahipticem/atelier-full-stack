const express = require("express");

const router = express.Router();
// const client = require("../database/client");
// const app = express();

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// // Import itemControllers module for handling item-related operations
const medecinControllers = require("./controllers/medecinControllers");

const episodeControllers = require("./controllers/episodeControllers");

const hopitalControllers = require("./controllers/hopitalControllers");

const formulaireControllers = require("./controllers/formulaireControllers");

router.get("/medecins", medecinControllers.browseMedecin);
router.get("/medecins/:id", medecinControllers.readMedecin);

router.get("/episodes", episodeControllers.browseEpisode);
router.get("/hopitals", hopitalControllers.browseHopital);

router.get("/formulaires", formulaireControllers.browseFormulaire);
router.post("/formulaires", formulaireControllers.add);

// Route to get a list of items

// router.get("/medecins", (req, res) => {
//   let query = "SELECT * FROM medecin";
//   const values = [];
//   if (req.query.hopital) {
//     query += " WHERE hopital_id = ?";
//     values.push(req.query.hopital);
//   }

//   client
//     .query(query, values)
//     .then((result) => {
//       res.status(200).json(result[0]);
//     })
//     .catch((err) => {
//       console.error(err);
//       res.sendStatus(500);
//     });
// });
// const medecinGet = (req, res) => {
//   const medecinId = +req.params.id;
//   client
//     .query("SELECT * FROM medecin where id = ?", [medecinId])
//     .then((result) => {
//       if (result[0].length === 0) {
//         res.status(404).send("Medecin not found");
//       } else {
//         res.status(200).json(result[0][0]);
//       }
//     })
//     .catch((error) => {
//       console.error(error);
//       res.sendStatus(500);
//     });
// };
// router.get("/medecins/:id", medecinGet);

// router.get("/hopitals", (req, res) => {
//   client
//     .query("SELECT * from hopital")
//     .then((result) => {
//       res.status(200).json(result[0]);
//     })
//     .catch((err) => {
//       console.error(err);
//       res.sendStatus(500);
//     });
// });

// router.get("/episodes", (req, res) => {
//   client
//     .query("SELECT * from episodes")
//     .then((result) => {
//       res.status(200).json(result[0]);
//     })
//     .catch((err) => {
//       console.error(err);
//       res.sendStatus(500);
//     });
// });

// router.post("./medecins", async (req, res) => {
//   await client
//     .query(
//       "insert into medecin(name, firstName, specialite, city, urlToImage, descriptif, disponibilite, hopital_id) VALUES(Hahn, Erica, Cardialogue, Lyon, https://i.pinimg.com/1200x/c5/8e/d0/c58ed0b9e5f8e84752830d325370bdd8.jpg, abc,Demain, 2 )",
//       [req.body.values]
//     )
//     .then(() => {
//       res.status(201).end();
//     });
// });

// // Route to get a specific item by ID
// router.get("/items/:id", itemControllers.read);

// // Route to add a new item
// router.post("/items", itemControllers.add);

// /* ************************************************************************* */

module.exports = router;
