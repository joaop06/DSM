import { Link } from 'react-router-dom'

function Home() {
    return (
        <div>
            <h1>Página Home</h1>
            <span>Nossa primeira aplicação em REACT</span><br /><br /><br />

            <h1>Acesse nossa loja!</h1>
            <Link to='/loja' />
        </div>
    )
}

export default Home