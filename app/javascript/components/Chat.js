import React from 'react';
import './Chat.css';

function Chat() {
	return (
		<div class="chat">
			<div class="chat-display"></div>
			<div class="chat-send">
				<input type="text" placeholder="type message..." />
				<button>SEND</button>
			</div>
		</div>
	);
}

export default Chat;
