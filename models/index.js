const knex = require("../database/index");

const createExcelFile = async (
    EmployeesName,
    Division,
    Module,
) => {
  return await knex("employees").insert(
    EmployeesName,
    Division,
    Module,
  )
};

const getExcelFiles = async () => {
  return await knex.select("*")
    .from("employees")
    // .limit(500)
    .where("is_lucky_draw", 0)
};

const getIsLuckyDraw = async () => {
  return await knex
    .select("*")
    .from("employees")
    .where("is_lucky_draw", 1);
};

const singleExcelFiles = async (id) => {
  return await knex
    .select("*")
    .from("employees")
    .where("id", id)
    .andWhere("is_lucky_draw", 0)
    .first();
};

const isLuckDraw = async (id, is_lucky_draw) => {
  return await knex("employees")
    .update(is_lucky_draw)
    .where("id", id)
    .andWhere("is_lucky_draw", false);
};

const checkIfFileExists = async (fileName) => {
  const result = await knex("uploaded_files").where({ file_name: fileName }).first();
  return result ? true : false;
};

const saveFileInfo = async (fileName) => {
  await knex("uploaded_files").insert({ file_name: fileName });
};

const checkIfRecordExists = async (transactionId) => {
  const result = await knex("employees").where({ Transactionid: transactionId }).first();
  return result ? true : false;
};

module.exports = {
  createExcelFile,
  getExcelFiles,
  getIsLuckyDraw,
  singleExcelFiles,
  isLuckDraw,
  checkIfRecordExists,
  saveFileInfo,
  checkIfFileExists
};
