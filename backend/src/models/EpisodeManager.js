const AbstractManager = require("./AbstractManager");

class EpisodeManager extends AbstractManager {
  constructor() {
    // Call the constructor of the parent class (AbstractManager)
    // and pass the table name "item" as configuration
    super({ table: "episodes" });
  }

  // The C of CRUD - Create operation

  async create(episode) {
    // Execute the SQL INSERT query to add a new episode to the "episode" table
    const [result] = await this.database.query(
      `insert into ${this.table} (title) values (?)`,
      [episode.title]
    );

    // Return the ID of the newly inserted episode
    return result.insertId;
  }

  // The Rs of CRUD - Read operations

  async read(id) {
    // Execute the SQL SELECT query to retrieve a specific episode by its ID
    const [rows] = await this.database.query(
      `select * from ${this.table} where id = ?`,
      [id]
    );

    // Return the first row of the result, which represents the episode
    return rows[0];
  }

  async readAll() {
    // Execute the SQL SELECT query to retrieve all episodes from the "item" table
    const [rows] = await this.database.query(`select * from ${this.table}`);

    // Return the array of items
    return rows;
  }

  // The U of CRUD - Update operation
  // TODO: Implement the update operation to modify an existing item

  // async update(item) {
  //   ...
  // }

  // The D of CRUD - Delete operation
  // TODO: Implement the delete operation to remove an item by its ID

  // async delete(id) {
  //   ...
  // }
}

module.exports = EpisodeManager;
