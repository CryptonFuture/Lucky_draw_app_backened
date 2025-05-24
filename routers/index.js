const express = require("express");
const ExcelFileImportController = require("../controllers/Excel_File_Import_Controller");
const fileUploads = require("../storage/file_storage");
// const fileUpload = require('express-fileupload')
const uploadOtps = require('../storage/file_upload')

const router = express.Router();

router.post(
  "/excel_file_import",
  fileUploads.single('excel'),
  ExcelFileImportController.excel_file_import
);

router.get(
  "/get_excel_file_import",
  ExcelFileImportController.getExcelFile
);

router.get(
  "/is_luck_draw",
  ExcelFileImportController.Is_Lucky_Draw
);

router.get(
  "/single_excel_file_import",
  ExcelFileImportController.isLuckyDrawUpdate
);


module.exports = router;
