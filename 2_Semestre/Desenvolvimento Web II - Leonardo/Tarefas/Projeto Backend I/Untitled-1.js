const fs = require('fs'); // Importe o módulo fs

const data = { // Crie um objeto com os dados a serem gravados
  nome: "João",
  idade: 30,
  cidade: "São Paulo"
};

const jsonData = JSON.stringify(data); // Converta o objeto em uma string JSON

fs.writeFile('dados.json', jsonData, err => { // Escreva a string JSON no arquivo
  if (err) {
    console.error(err);
    return;
  }
  console.log('Dados gravados com sucesso!');
});
