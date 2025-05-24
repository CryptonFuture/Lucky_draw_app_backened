const XLSX = require("xlsx");
const crypto = require("crypto");
const path = require("path");

const fs = require("fs");

const {
  createExcelFile,
  getExcelFiles,
  singleExcelFiles,
  getIsLuckyDraw,
  isLuckDraw,
  checkIfFileExists,
  checkIfRecordExists,
  saveFileInfo
} = require("../models/index");
const {
  FILE_INVALID,
  INTERNAL_SERVER_ERROR,
  NO_DATA_FOUND,
  IS_LUCKY_DRAW_ALREADY_USED,
} = require("../constants/error");
const { EXCEL_DATE_SUCCESSFULLY_UPLOAD } = require("../constants/message");

// const excel_file_import = async (req, res) => {
//   try {
//     const { excel } = req.files;
//     if (
//       excel.mimetype !==
//       "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
//     ) {
//       return res.status(400).json({
//         success: false,
//         error: FILE_INVALID,
//       });
//     }

//     const fileExists = await checkIfFileExists(excel.name);
//     if (fileExists) {
//       return res.status(400).json({
//         success: false,
//         error: "This file has already been uploaded.",
//       });
//     }

//     const workbook = XLSX.readFile("Test data.xlsx");
//     const sheetName = workbook.SheetNames[0];
//     const data = XLSX.utils.sheet_to_json(workbook.Sheets[sheetName]);

//     const successData = [];

//     for (let i = 0; i < data.length; i++) {
//       const {
//         EmployeesName,
//         Division,
//         Module
//       } = data[i];

//       await createExcelFile({
//         EmployeesName,
//         Division,
//         Module
//       });

//       successData.push(data[i]);
//     }

//     await saveFileInfo(excel.name);

//     return res.status(200).json({
//       success: true,
//       message: EXCEL_DATE_SUCCESSFULLY_UPLOAD,
//       data: successData,
//     });
//   } catch (error) {
//     console.log(error);

//     return res.json({
//       success: false,
//       error: INTERNAL_SERVER_ERROR,
//     });
//   }
// };



// const excel_file_import = async (req, res) => {
//   try {
//     const { excel } = req.files;

//     if (
//       excel.mimetype !==
//       "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
//     ) {
//       return res.status(400).json({
//         success: false,
//         error: FILE_INVALID,
//       });
//     }

//     const fileExists = await checkIfFileExists(excel.name);
//     if (fileExists) {
//       return res.status(400).json({
//         success: false,
//         error: "This file has already been uploaded.",
//       });
//     }

//     const uploadDir = path.join(__dirname, "uploads");
//     if (!fs.existsSync(uploadDir)) {
//       fs.mkdirSync(uploadDir);
//     }

//     const tempFilePath = path.join(uploadDir, excel.name);
//     await excel.mv(tempFilePath); 

//     const workbook = XLSX.readFile(tempFilePath);
//     const sheetName = workbook.SheetNames[0];
//     const data = XLSX.utils.sheet_to_json(workbook.Sheets[sheetName]);

//     const successData = [];

//     for (let i = 0; i < data.length; i++) {
//       const { EmployeesName, Division, Module } = data[i];

//       await createExcelFile({
//         EmployeesName,
//         Division,
//         Module,
//       });

//       successData.push(data[i]);
//     }

//     await saveFileInfo(excel.name);

//     fs.unlinkSync(tempFilePath);

//     return res.status(200).json({
//       success: true,
//       message: EXCEL_DATE_SUCCESSFULLY_UPLOAD,
//       data: successData,
//     });
//   } catch (error) {
//     console.error(error);
//     return res.status(500).json({
//       success: false,
//       error: INTERNAL_SERVER_ERROR,
//     });
//   }
// };



const excel_file_import = async (req, res) => {
  try {
    const file = req.file;

    if (!file) {
      return res.status(400).json({
        success: false,
        error: "No file uploaded or invalid file type.",
      });
    }

    const fileExists = await checkIfFileExists(file.originalname);
    if (fileExists) {
      fs.unlinkSync(file.path);
      return res.status(400).json({
        success: false,
        error: "This file has already been uploaded.",
      });
    }

    const workbook = XLSX.readFile(file.path);
    const sheetName = workbook.SheetNames[0];
    const data = XLSX.utils.sheet_to_json(workbook.Sheets[sheetName]);

    const successData = [];

    for (const row of data) {
      const { EmployeesName, Division, Module } = row;

      await createExcelFile({
        EmployeesName,
        Division,
        Module,
      });

      successData.push(row);
    }

    await saveFileInfo(file.originalname);

    fs.unlinkSync(file.path);

    return res.status(200).json({
      success: true,
      message: EXCEL_DATE_SUCCESSFULLY_UPLOAD,
      data: successData,
    });
  } catch (error) {
    console.error(error);
    return res.status(500).json({
      success: false,
      error: INTERNAL_SERVER_ERROR,
    });
  }
};


const getExcelFile = async (req, res) => {
  try {
    const excelFile = await getExcelFiles();

    if (!excelFile.length) {
      return res.status(400).json({
        success: false,
        data: excelFile,
        error: NO_DATA_FOUND,
      });
    }

    const itemMap = [...new Set(excelFile)].map((item) => ({
      id: item.id,
      EmployeesName: item.EmployeesName,
      Division: item.Division,
      Module: item.Module,
    }));

    return res.status(200).json({
      success: true,
      data: itemMap,
    });
  } catch (error) {
    res.json({
      success: false,
      error: INTERNAL_SERVER_ERROR,
    });

  }
};

const Is_Lucky_Draw = async (req, res) => {
  try {
    const excelFile = await getIsLuckyDraw();

    if (!excelFile.length) {
      return res.status(400).json({
        success: false,
        data: excelFile,
        error: NO_DATA_FOUND,
      });
    }

    return res.status(200).json({
      success: true,
      data: excelFile,
    });
  } catch (error) {
    res.json({
      success: false,
      error: INTERNAL_SERVER_ERROR,
    });
  }
};

const isLuckyDrawUpdate = async (req, res) => {
  try {
    const { id } = req.query;

    const excelFile = await isLuckDraw(id, { is_lucky_draw: true });

    if (!excelFile) {
      return res.status(400).json({
        success: false,
        error: IS_LUCKY_DRAW_ALREADY_USED,
      });
    }

    return res.status(200).json({
      success: true,
      data: excelFile,
    });
  } catch (error) {
    res.json({
      success: false,
      error: INTERNAL_SERVER_ERROR,
    });
  }
};

module.exports = {
  excel_file_import,
  getExcelFile,
  Is_Lucky_Draw,
  isLuckyDrawUpdate,
};
