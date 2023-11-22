function luckyDraw(player) {
  return new Promise((resolve, reject) => {
    const win = Boolean(Math.round(Math.random()));

    process.nextTick(() => {
      if (win) {
        resolve(`${player} won a prize in the draw!`);
      } else {
        reject(new Error(`${player} lost the draw.`));
      }
    });
  });
}

async function getResults() {
  try {
    const resultsTina = await luckyDraw('Tina');
    console.log(resultsTina);
  } catch (error) {
    console.error(error.message);
  }

  try {
    const resultsJorge = await luckyDraw('Jorge');
    console.log(resultsJorge);
  } catch (error) {
    console.error(error.message);
  }

  try {
    const resultsJulien = await luckyDraw('Julien');
    console.log(resultsJulien);
  } catch (error) {
    console.error(error.message);
  }
}

getResults();
