import { useEffect, useState } from 'react'
import './style.css'

function App() {
  const [pokemon, setPokemon] = useState([])
  const [name_pokemon, setNamePokemon] = useState("")

  function loadApi(namePokemon) {
    let url = `https://pokeapi.co/api/v2/pokemon/${namePokemon}`
    fetch(url)
      .then(response => response.json())
      .then(res => {
        console.log(res)
        setPokemon(res)
      })
      .catch(err => console.log(err))
  }

  const handleNamePokemon = (event) => {
    setNamePokemon(event.target.value)
  }

  const findPokemon = () => {
    loadApi(name_pokemon)
  }

  const handleKeyPress = (event) => {
    if (event.key === 'Enter') {
      findPokemon()
    }
  }



  useEffect(() => {
    loadApi('dugtrio')
    console.log(pokemon)
  }, [])

  return (
    <div className='container'>
      <header>
        <strong>Pokemon API</strong>
      </header>

      <input
        id="nomePokemon"
        type="text"
        value={name_pokemon}
        onChange={handleNamePokemon}
        onKeyPress={handleKeyPress}

      />
      <button type="button" onClick={findPokemon}>Buscar Pokemon</button>

      <div className="pokemon">
        <img src={pokemon.sprites?.front_default} alt={pokemon.name} />
        <div className="info">
          <div className='divInfo'>
            <div>Nome: {pokemon.name}</div>
            <div>Nº: {pokemon.id}</div>
            <div>Peso: {pokemon.weight / 10}kg</div>
            <div>Altura: {pokemon.height / 10}m</div>
          </div>

          <div className='divInfo'>
            <div>Ataque: {pokemon.stats ? pokemon.stats[1]?.base_stat : null}</div>
            <div>Ataque Especial: {pokemon.stats ? pokemon.stats[3]?.base_stat : null}</div>

            <div>Defesa: {pokemon.stats ? pokemon.stats[2]?.base_stat : null}</div>
            <div>Defesa Especial: {pokemon.stats ? pokemon.stats[4]?.base_stat : null}</div>

            <div>Vida: {pokemon.stats ? pokemon.stats[0]?.base_stat : null}</div>
            <div>Velocidade: {pokemon.stats ? pokemon.stats[5]?.base_stat : null}</div>

          </div>
        </div>
      </div>
    </div>
  );
}

export default App;
