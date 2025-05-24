const multer = require("multer");
const path = require("path");
const fs = require("fs");

const storage = multer.diskStorage({
  destination: (req, file, callback) => {
    const uploadPath = "uploads/";

    if (!fs.existsSync(uploadPath)) {
      fs.mkdirSync(uploadPath, { recursive: true });
    }

    callback(null, uploadPath);
  },

  filename: (req, file, callback) => {
    callback(
      null,
      `${file.fieldname}-${Date.now()}${path.extname(file.originalname)}`
    );
  },
});

const fileFilter = (req, res, file, callback) => {
  if (
    file.mimetype ===
    "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
  ) {
    callback(null, true);
  } else {
    callback(null, false);
    return callback(new Error("Only .xlsx formatted files are allowed"));
  }
};

const maxSize = 10 * 1024 * 1024; 

const fileUploads = multer({
  storage: storage,
  fileFilter: fileFilter,
  limits: { fileSize: maxSize },
});

module.exports = fileUploads;
