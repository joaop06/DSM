function Cadastro() {
    return (
        <div>

            <form>
                <div style={{ display: "flex", flexDirection: "column", marginBottom: 10 + 'px' }}>
                    <label for="name">Nome:</label>
                    <input style={{ width: 200 }} type="text" id="name" name="name"></input>
                </div>

                <div style={{ display: "flex", flexDirection: "column", marginBottom: 10 + 'px' }}>
                    <label for="email">E-mail:</label>
                    <input style={{ width: 200 }} type="email" id="email" name="email"></input>
                </div>

                <div style={{ display: "flex", flexDirection: "column", marginBottom: 10 + 'px' }}>
                    <label for="age">Idade:</label>
                    <input style={{ width: 200 }} type="text" id="age" name="age"></input>
                </div>

                <button type="submit">Enviar</button>
            </form >

        </div >
    )
}

export default Cadastro