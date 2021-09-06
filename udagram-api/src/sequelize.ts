import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";
/**
export const sequelize = new Sequelize({
  username: config.username,
  password: config.password,
  database: config.database,
  host: config.host,
  port: config.port,

  dialect: "postgres",
  storage: ":memory:",
});


**/

export const sequelize = new Sequelize(
  "postgres://postgres:postgres@apidb2.crrocpk4jrme.us-east-1.rds.amazonaws.com:5432/postgres"
);