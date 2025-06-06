const env = process.env;

module.exports = {
  port: env.PORT || 8000,

  dbConfig: {
    connection: {
      database: process.env.DB_DATABASE,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      host: process.env.DB_HOST,
      port: process.env.DB_PORT || 5432,
    },
  },
};
