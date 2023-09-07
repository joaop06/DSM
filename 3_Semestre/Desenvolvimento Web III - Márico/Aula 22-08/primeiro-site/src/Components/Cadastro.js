import React, { useState, useEffect } from 'react';

function Cadastro() {
    const [input, setInput] = useState('');
    const [tarefas, setTarefas] = useState([
        "Pagar conta de luz",
        "Estudar programação",
        "Enviar a tarefa"
    ]);
    const [namesUser, setNamesUser] = useState([]);
    const [selectedColor, setSelectedColor] = useState(); // Estado para rastrear a cor selecionada

    const tarefasStorage = localStorage.getItem('@tarefa');
    const nameUser = localStorage.getItem('nome');
    let name;

    useEffect(() => {
        if (tarefasStorage) {
            setTarefas(JSON.parse(tarefasStorage));
        }
        if (nameUser !== '') {
            name = prompt('Digite seu nome:');
            setNamesUser(name);
        }
    }, []);

    useEffect(() => {
        localStorage.setItem('@tarefa', JSON.stringify(tarefas));
        localStorage.setItem('nome', JSON.stringify(namesUser));
    }, [tarefas, namesUser]);

    // Função para lidar com a seleção de cor
    const handleColorChange = (color) => {
        setSelectedColor(color);
    };

    return (
        <div style={{ backgroundColor: selectedColor, minHeight: '100vh', transition: 'background-color 0.5s' }}>
            <h1>Olá, {localStorage.getItem('nome')}! Sua lista de tarefas:</h1>

            <form onSubmit={handleRegistro}>
                <label>Nome da Tarefa: </label><br />
                <input
                    placeholder='Digite uma Tarefa'
                    value={input}
                    onChange={(e) => setInput(e.target.value)}
                /><br />

                <button type='submit'>Registro</button>
            </form>
            <br /><br />

            {/* Adicione Radio Buttons para escolher uma cor */}
            <div>
                <label>
                    <input
                        type="radio"
                        value="blueviolet"
                        checked={selectedColor === "blueviolet"}
                        onChange={() => handleColorChange("blueviolet")}
                    />
                    blueviolet
                </label>
                <label>
                    <input
                        type="radio"
                        value="cadetblue"
                        checked={selectedColor === "cadetblue"}
                        onChange={() => handleColorChange("cadetblue")}
                    />
                    cadetblue
                </label>
                <label>
                    <input
                        type="radio"
                        value="lightcoral"
                        checked={selectedColor === "lightcoral"}
                        onChange={() => handleColorChange("lightcoral")}
                    />
                    lightcoral
                </label>
            </div>
            <br /><br />

            <ul>
                {tarefas.map((tarefa, index) => (
                    <li key={index}>{tarefa}</li>
                ))}
            </ul>
        </div>
    );

    function handleRegistro(e) {
        e.preventDefault();
        setTarefas([...tarefas, input]);
        setInput('');
    }
}

export default Cadastro;
