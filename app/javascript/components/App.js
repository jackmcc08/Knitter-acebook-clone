import React, { Component } from 'react';
import Popup from './Popup';
import { useState } from 'react';

// const [buttonPopup, setButtonPopup] = useState(false);

class App extends Component {
	render() {
		var buttonPopup = false;
		return (
			<div>
				<button onClick={() => (buttonPopup = true)}>Tearoom</button>
				<Popup trigger={buttonPopup}>
					<h3>Popup</h3>
				</Popup>
			</div>
		);
	}
}

export default App;
