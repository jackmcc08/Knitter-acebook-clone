import React from 'react';
import './Chat.css';
import MessageClient from './MessageClient';
import ChatForm from './ChatForm';

function Chat() {
	return (
		<div className="chat">
			<div className="chat-display">
				<MessageClient />
			</div>
			<ChatForm />
		</div>
	);
}

export default Chat;
