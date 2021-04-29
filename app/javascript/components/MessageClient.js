import React, { Component } from 'react';

export class MessageClient extends Component {
	constructor() {
		super();
		this.state = {
			messages: [],
			error: null,
		};
	}

	popMessages = (data) => {
		this.setState({ messages: data });
	};

	componentDidMount() {
		setInterval(() => {
			$.get('/messages').then(this.popMessages);
		}, 4000);
	}

	render() {
		return (
			<div>
				{this.state.messages.length > 0 &&
					this.state.messages.map((item) => (
						<div className="message-wrapper" key={item.id} id={item.id}>
							<div className="message-poster">{item.username}</div>
							<div className="message-content">{item.content}</div>
						</div>
					))}
				{this.state.error && <div>{this.state.errror}</div>}
			</div>
		);
	}
}

export default MessageClient;
