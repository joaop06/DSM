import { useState } from 'react'
import Nome from './Components/Nome'

function App() {
  const [aluno, setAluno] = useState('Aluno')
  function handleChangeName() {
    setAluno('João Pedro')
  }

  return (
    <div>
      <h1>Minha Página Web!</h1>
      <h2>Olá {aluno}!</h2>
      <button onClick={handleChangeName}>Mudar nome</button>
    </div>
  );
}

export default App;

