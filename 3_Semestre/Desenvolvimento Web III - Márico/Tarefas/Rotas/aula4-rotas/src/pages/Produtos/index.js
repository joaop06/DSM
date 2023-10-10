import { useParams } from 'react-router-dom'

function Produto() {

    const { id } = useParams()

    if (id === 'playstation') {
        return (
            <div>
                <h1>Console PlayStation 5</h1><br />
                <h2>R$4.445,00</h2><br />
                <h3>à vista no Pix e boleto (1% off)</h3><br />
                <img src="https://lojasbecker.vteximg.com.br/arquivos/ids/2506822-1000-1000/1-play5-ragnarok-capa.jpg?v=638316130299270000" alt="Console PlayStation 5" />
            </div>
        )
    }

    if (id === 'xbox') {
        return (
            <div>
                <h1>Console Microsoft Xbox Series X Premium Edition</h1><br />
                <h2>R$4.499,00</h2><br />
                <h3>à vista no Pix e boleto (1% off)</h3><br />
                <img src="https://m.media-amazon.com/images/I/51rsXDAfI-L._AC_UF1000,1000_QL80_.jpg" alt="Xbox Series X" />
            </div>
        )
    }

    if (id === 'atari') {
        return (
            <div>
                <h1>Atari 2600+</h1><br />
                <h2>R$855,00</h2><br />
                <h3>à vista no Pix e boleto (1% off)</h3><br />
                <img src="https://s2-techtudo.glbimg.com/CwzuaBwc-Rpx6cVzdVRnNgY1srw=/0x0:1200x675/600x0/smart/filters:gifv():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2023/c/r/a4OC55QbanVDMo0Ke8Aw/atari-2600-videogame-retro-console-plaion-joystick-10-em-1-cartucho.jpg" alt="Atari 2600+" />
            </div>
        )
    }

    if (id === 'nintendo') {
        return (
            <div>
                <h1>Console Super Nintendo</h1><br />
                <h2>R$1.199,00</h2><br />
                <h3>à vista no Pix e boleto (1% off)</h3><br />
                <img src="https://cdn.awsli.com.br/600x700/17/17021/produto/28075298/photoroom-20230912_204642_1-dxoqhok8i7.jpg" alt="Console Super Nintendo" />
            </div>
        )
    }

}

export default Produto