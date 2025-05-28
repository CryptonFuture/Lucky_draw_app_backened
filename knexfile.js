// Update with your config settings.
const { dbConfig } = require('./config')
/**
 * @type { Object.<string, import("knex").Knex.Config> }
 */
module.exports = {
  development: {
    client: "mysql2",
    connection: dbConfig.connection,
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      directory: "./database/migrations",
      tableName: "migrations",
    },
    seeds: {
      directory: "./database/seeds/development",
    },
  },

  staging: {
    client: "mysql2",
    connection: dbConfig.connection,
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      directory: "./database/migrations",
      tableName: "migrations",
    },
    seeds: {
      directory: "./database/seeds/development",
    },
  },

  production: {
    client: "mysql2",
    connection: dbConfig.connection,
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      directory: "./database/migrations",
      tableName: "migrations",
    },
    seeds: {
      directory: "./database/seeds/development",
    },
  },
};
