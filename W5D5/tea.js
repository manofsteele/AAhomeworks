const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function askTea() {
  reader.question("Would you like tea?", function (answer) {
    console.log(`${answer}`);
  reader.question()
  })
}
