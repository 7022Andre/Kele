require 'httparty'

class Kele
	include HTTParty

	def initialize(email, password)
		base_uri = "https://www.bloc.io/api/v1"
		response = self.class.post("https://www.bloc.io/api/v1/sessions", body: {"email": email, "password": password})
		@auth_token = response["auth_token"]
		@error_message = response["message"]
	end
end
