const express = require('express');
const app = express();
const port = 3000;


app.use(express.json());

// Define a route
app.get('/', (req, res) => {
  res.send('Hello World!');
});

const planRoutes = require("./routes/plan");
app.use("/plan", planRoutes);

const settingRoutes = require("./routes/system_setting");
app.use("/setting", settingRoutes);

// Start the server
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
