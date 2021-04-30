import React, { Component } from 'react';

export class ChatForm extends Component {
	constructor(props) {
		super(props);
		this.state = { value: '' };

		this.handleChange = this.handleChange.bind(this);
		this.handleSubmit = this.handleSubmit.bind(this);
	}

	handleChange(event) {
		this.setState({ value: event.target.value });
	}

	handleSubmit(event) {
		event.preventDefault();
		$.ajax({
			method: 'POST',
			data: { content: this.state.value },
			url: '/messages',
			success: (data) => {
				console.log(data);
			},
			error: (data) => {
				console.log(data);
			},
		});
	}

	render() {
		return (
			<form id="chat-form" onSubmit={this.handleSubmit}>
				<input
					type="text"
					placeholder="type message..."
					id="chat-content"
					name="content"
					value={this.state.value}
					onChange={this.handleChange}
				/>
				<input type="submit" value="SEND" id="chat-submit" />
			</form>
		);
	}
}

export default ChatForm;
