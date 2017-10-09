# AccessAPI
AccessAPI is a lightweight gem using httparty for accessing the Bloc REST web services. 

## Summary

- Ruby: 2.4.0
- httparty: 0.15.6
- json: 2.1.0

I created this Ruby client to access the [Bloc API](http://docs.blocapi.apiary.io) and to retrieve the below information as a [JSON](https://github.com/flori/json) blob using [httparty](https://github.com/jnunemaker/httparty).
It can be modified to access any other API and also included as a gem in another application.

- User data
- Mentor availability
- Roadmaps and checkpoints
- Retrieve and send messages
- Submit and update checkpoint assignments

## How to build?

1. Build
```
$ gem build access_api.gemspec
Successfully built RubyGem
Name: access_api
Version: 0.0.1
File: access_api-0.0.1.gem
```
2. Install

```
$ gem install ./access_api-0.0.1.gem
Successfully installed access_api-0.0.1
Parsing documentation for access_api-0.0.1
Done installing documentation for access_api after 0 seconds
1 gem installed
```

## How to run?

1. Start irb and require gem
```
irb
require 'access_api'
 => true
```
2. Authorize user (API returns auth token)
```
access_api = AccessAPI.new('USER NAME', 'PASSWORD')
=> #<AccessAPI:0x000000012345678 @auth_token="THIS IS YOUR TOKEN", @error_message=nil>
```
3. Choose from the following methods

- Get current user: `access_api.get_me`
- Get mentor availability: `access_api.get_mentor_availability`
- Get roadmap: `access_api.get_roadmap(id)`
- Get checkpoint: `access_api.get_checkpoint(id)`
- Get messages: `access_api.get_messages(page_no)` (if no page number is entered message threads paginated with 10 threads per page is returned)
- Create message: `access_api.create_message(sender_email, recipient_id, subject, message)`
- Create checkpoint submission: `access_api.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)`
- Update checkpoint submission: `access_api.update_submission(id, checkpoint_id, assignment_branch, assignment_commit_link, comment)`
