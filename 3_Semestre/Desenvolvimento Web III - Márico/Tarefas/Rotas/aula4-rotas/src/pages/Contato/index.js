import { GoogleMap, Marker, withGoogleMap, withScriptjs } from 'react-google-maps'

function Contato() {

    const MapComponent = withScriptjs(
        withGoogleMap(props => (
            <GoogleMap defaultZoom={8} defaultCenter={{ lat: -34.397, lng: 150.644 }}>
                {/* Adicione Marcadores (Markers) ou outros componentes aqui */}
                <Marker position={{ lat: -34.397, lng: 150.644 }} />
            </GoogleMap>
        ))
    )

    return (
        <div>
            <h2>Contatos</h2>
            <MapComponent
                googleMapURL={`https://maps.googleapis.com/maps/api/js?key=AIzaSyC0VH8GOMSd1NP3IDWnMliUI3KdC4iCaFo`}
                loadingElement={<div style={{ height: '100%' }} />}
                containerElement={<div style={{ height: '100%' }} />}
                mapElement={<div style={{ height: '100%' }} />}
            />
        </div>
    )
}

export default Contato