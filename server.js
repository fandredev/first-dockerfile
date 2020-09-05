import express from "express";
import cors from "cors";
import dotenv from "dotenv";
dotenv.config();

const { PORT } = process.env;
const app = express();
app.use(express.urlencoded({ extended: true }));
app.use(cors);

app.use("/", (req, res) => {
  return res.send("My first dockerfile");
});

app.listen(PORT, () => {
  console.log(`Running at the ${PORT}`);
});
