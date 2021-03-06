require 'httparty'
require 'json'
require './lib/roadmap'
require './lib/messages'

class AccessAPI
	include HTTParty
	include Roadmap
	include Messages

	base_uri "https://www.bloc.io/api/v1"

	def initialize(email, password)
		response = self.class.post("/sessions", body: {"email": email, "password": password})
		@auth_token = response["auth_token"]
		@error_message = response["message"]
	end

	def get_me
		response = self.class.get("/users/me", headers: { "authorization": @auth_token })
		@user_data = JSON.parse(response.body)
	end

	def get_mentor_availability
		mentor_id = get_me["current_enrollment"]["mentor_id"]
		response = self.class.get("/mentors/#{mentor_id}/student_availability", headers: { "authorization": @auth_token })
		@mentor_avail = JSON.parse(response.body)
	end
end
