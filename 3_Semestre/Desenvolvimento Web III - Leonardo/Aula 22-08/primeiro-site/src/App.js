import { useState } from 'react'
import Nome from './Components/Nome'

function App() {
  const [aluno, setAluno] = useState('Aluno')
  function handleChangeName(nome) {
    setAluno(nome)
    Nome(nome, 15)
  }

  return (

    <div>
      <div>
        <h1>Minha Página Web!</h1>
        <h2>Olá {aluno}!</h2>
        <button onClick={() => handleChangeName('João Pedro')}>Mudar nome</button>
      </div>

      <div>
        <br /><br /><hr />
      </div>
    </div>
  );
}

export default App;

