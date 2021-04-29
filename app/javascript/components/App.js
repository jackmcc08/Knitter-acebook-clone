import React, { Component, useState } from 'react';
// import Popup from './Popup';
import Chat from './Chat';

// const [buttonPopup2, setButtonPopup] = useState(false);

class App extends Component {
	render() {
		// var buttonPopup = false;
		// return (
		// 	<div>
		// 		<button onClick={() => (buttonPopup = true)}>Tearoom</button>
		// 		<Popup trigger={buttonPopup}>
		// 			<h3>Popup</h3>
		// 		</Popup>
		// 	</div>
		// );
		return <Chat />;
	}
}

export default App;
