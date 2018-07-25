const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function askTea() {
  reader.question('Would you like tea?', function (answer) {
    reader.question("Would you like biscuits?", function (answer2) {
      const firstRes = (answer === 'yes' ? 'do' : 'don\'t');
      const secondRes = (answer2 === 'yes' ? 'do' : 'don\'t');
    console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
    reader.close();
  });
  });
}

askTea();
