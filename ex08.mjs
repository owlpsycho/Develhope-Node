import * as fs from "node:fs";

fs.writeFile("prova.txt", "Hello, World!", (err) => {
  if (err) {
    console.error(err);
  } 
});
