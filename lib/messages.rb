module Messages
	def get_messages(page = nil)
		custom_url = page == nil ? "/message_threads" : "/message_threads?page=#{page}"
		response = self.class.get(custom_url, headers: { "authorization": @auth_token })
		@messages = JSON.parse(response.body)
	end

	def create_message(sender_email, recipient_id, subject, message)
		response = self.class.post("/messages",
			headers: { "authorization": @auth_token	},
			body: {
			"sender": sender_email,
			"recipient_id": recipient_id,
			"subject": subject,
			"stripped-text": message
			})
	end
end
