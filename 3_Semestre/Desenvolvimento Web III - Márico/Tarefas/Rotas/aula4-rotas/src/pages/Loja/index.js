import { Link } from 'react-router-dom'

function Loja() {
    return (
        <div>
            <br />
            <h1><Link to="/produtos/playstation" >PlayStation 5</Link></h1>

            <br /><br /><br />
            <h1><Link to="/produtos/xbox" >Xbox Series X</Link></h1>

            <br /><br /><br />
            <h1><Link to="/produtos/atari" >Atari 2600+</Link></h1>

            <br /><br /><br />
            <h1><Link to="/produtos/nintendo" >Super Nintendo</Link></h1>
        </div>
    )
}

export default Loja