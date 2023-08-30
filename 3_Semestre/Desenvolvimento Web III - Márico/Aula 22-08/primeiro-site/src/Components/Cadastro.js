import { useState } from "react"

function Cadastro() {
    const [nameUser, setNameUser] = useStatel('')
    const [email, setEmail] = useStatel('')
    const [age, setAge] = useStatel('')

    const [user, setUser] = useStatel({})

    function handleRegister(e) {
        e.preventDefault()

        setUser({
            nameUser: nameUser,
            email: email,
            age: age,
        })
    }


    return (
        <div>
            <form onSubmit={handleRegister}>
                <label>Nome: </label><br />
                <input placeholder='Digite seu Nome'
                    value={nameUser}
                    onChange={(e) => setNome(e.target.value)}
                /><br />

                <label>Email: </label><br />
                <input placeholder='Digite seu Email'
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                /><br />

                <label>Idade: </label><br />
                <input placeholder='Digite sua Idade'
                    value={age}
                    onChange={(e) => setIdade(e.target.value)}
                /><br />

                <button type='submit'>Registro</button>
            </form>

            <br /><br />
            <div>
                <span>Bem vindo, {user.nome}</span><br />
                <span>Idade: {user.idade}</span><br />
                <span>Email: {user.email}</span><br />
            </div>
        </div >
    )
}

export default Cadastro