module Roadmap
	def get_roadmap(id)
		response = self.class.get("/roadmaps/#{id}", headers: { "authorization": @auth_token })
		@roadmap = JSON.parse(response.body)
	end

	def get_checkpoint(id)
		response = self.class.get("/checkpoints/#{id}", headers: { "authorization": @auth_token })
		@checkpoint = JSON.parse(response.body)
	end

	def create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)
		enrollment_id = get_me["current_enrollment"]["id"]
		response = self.class.post("/checkpoint_submissions",
			headers: { "authorization": @auth_token	},
			body: {
				"enrollment_id": enrollment_id,
				"checkpoint_id": checkpoint_id,
				"assignment_branch": assignment_branch,
				"assignment_commit_link": assignment_commit_link,
				"comment": comment
			})
	end

	def update_submission(id, checkpoint_id, assignment_branch, assignment_commit_link, comment)
		enrollment_id = get_me["current_enrollment"]["id"]
		response = self.class.put("/checkpoint_submissions/#{id}",
			headers: { "authorization": @auth_token	},
			body: {
				"enrollment_id": enrollment_id,
				"checkpoint_id": checkpoint_id,
				"assignment_branch": assignment_branch,
				"assignment_commit_link": assignment_commit_link,
				"comment": comment
			})
	end
end
