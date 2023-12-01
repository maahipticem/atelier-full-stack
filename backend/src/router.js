const express = require("express");

const router = express.Router();
const client = require("../database/client");

/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

// // Import itemControllers module for handling item-related operations
// const itemControllers = require("./controllers/itemControllers");

// Route to get a list of items
// router.get("/medecins", (req, res) => {
//   let query = "SELECT * FROM medecin";
//   client
//     .query(query)
//     .then((result) => {
//       res.status(200).json(result[0]);
//     })
//     .catch((err) => {
//       console.error(err);
//       res.sendStatus(500);
//     });
// });

// router.get("/medecins/:id", (req, res) => {
//   const medecinId = +req.params.id;
//   client
//     .query("SELECT * FROM medecin where id = ?", [medecinId])
//     .then((result) => {
//       if (result[0].length === 0) {
//         res.status(404).send("Article not found");
//       } else {
//         res.status(200).json(result[0][0]);
//       }
//     })
//     .catch((error) => {
//       console.error(error);
//       res.sendStatus(500);
//     });
// });
router.get("/medecins", (req, res) => {
  let query = "SELECT * FROM medecin";
  const values = [];
  if (req.query.hopital) {
    query += " WHERE hopital_id = ?";
    values.push(req.query.author);
  }

  if (req.query.specialite) {
    query += ` ${query.includes("WHERE") ? "AND" : "WHERE"} specialite = ?`;
    values.push(req.query.specialite);
  }

  client
    .query(query, values)
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});

router.get("/medecin/:id", (req, res) => {
  const medecinId = +req.params.id;
  client
    .query("SELECT * FROM medecin where id = ?", [medecinId])
    .then((result) => {
      if (result[0].length === 0) {
        res.status(404).send("Medecin not found");
      } else {
        res.status(200).json(result[0][0]);
      }
    })
    .catch((error) => {
      console.error(error);
      res.sendStatus(500);
    });
});
router.get("/specialite", (req, res) => {
  client
    .query("SELECT distinct(specialite) from medecin")
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});

router.get("/hopital", (req, res) => {
  client
    .query("SELECT distinct(hopital_id) from medecin")
    .then((result) => {
      res.status(200).json(result[0]);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
});

// // Route to get a specific item by ID
// router.get("/items/:id", itemControllers.read);

// // Route to add a new item
// router.post("/items", itemControllers.add);

// /* ************************************************************************* */

module.exports = router;
