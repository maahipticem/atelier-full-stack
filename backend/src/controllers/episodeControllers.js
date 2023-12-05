// Import access to database tables
const tables = require("../tables");

// The B of BREAD - Browse (Read All) operation
const browseEpisode = async (req, res, next) => {
  try {
    // Fetch all episodes from the database
    const episodes = await tables.episodes.readAll();

    // Respond with the episodes in JSON format
    res.json(episodes);
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

// The R of BREAD - Read operation
const read = async (req, res, next) => {
  try {
    // Fetch a specific episode from the database based on the provided ID
    const episode = await tables.episode.read(req.params.id);

    // If the episode is not found, respond with HTTP 404 (Not Found)
    // Otherwise, respond with the episode in JSON format
    if (episode == null) {
      res.sendStatus(404);
    } else {
      res.json(episode);
    }
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

// The E of BREAD - Edit (Update) operation
// This operation is not yet implemented

// The A of BREAD - Add (Create) operation
const add = async (req, res, next) => {
  // Extract the episode data from the request body
  const episode = req.body;

  try {
    // Insert the episode into the database
    const insertId = await tables.episode.create(episode);

    // Respond with HTTP 201 (Created) and the ID of the newly inserted episode
    res.status(201).json({ insertId });
  } catch (err) {
    // Pass any errors to the error-handling middleware
    next(err);
  }
};

// The D of BREAD - Destroy (Delete) operation
// This operation is not yet implemented

// Ready to export the controller functions
module.exports = {
  browseEpisode,
  read,
  // edit,
  add,
  // destroy,
};
