import './App.css';
import React, { useEffect, useState } from 'react';


function App() {
  const { pokemon, usePokemon } = useState([])

  function loadApi() {
    let url = "https://pokeapi.co/api/v2/pokemon/ditto"
    fetch(url)
      .then(response => response.json())
      .then(json => console.log(json))
      .catch(err => console.log(err))
  }

  useEffect(() => {
    loadApi()
  }, [])

  return (
    <div>
      <h1>TESTE</h1>
    </div>
  );
}

export default App;
