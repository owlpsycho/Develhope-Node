import * as fs from "node:fs";

fs.writeFile("prova.txt", "Hello, World!", (err) => {
  if (err) {
    console.error(err);
  }
  fs.writeFile("prova2.txt", "Hello, World 2!", (err) => {
    if (err) {
      console.error(err);
    } 
  }); 
});
