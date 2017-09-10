# Kele
A Ruby Gem API.

## Summary

- Ruby: 2.4.0
- httparty: 0.15.5
- json: 2.1.0

I created this Ruby client to access the [Bloc API](http://docs.blocapi.apiary.io) and to retrieve the following information as a [JSON](https://github.com/flori/json) blob using [httparty](https://github.com/jnunemaker/httparty).

- User data
- Mentor availability
- Roadmaps and checkpoints
- Retrieve and send messages
- Submit and update checkpoint assignments

## How to build?

1. Build your gem
```
$ gem build kele.gemspec
Successfully built RubyGem
Name: kele
Version: 0.0.1
File: kele-0.0.1.gem
```
2. Install your gem

```
$ gem install ./kele-0.0.1.gem
Successfully installed kele-0.0.1
Parsing documentation for kele-0.0.1
Done installing documentation for kele after 0 seconds
1 gem installed
```

## How to run?

1. Start irb and require gem
```
irb
require 'kele'
 => true
```
2. Authorize user which returns an authorization token
```
kele = Kele.new('USER NAME', 'PASSWORD')
```
3. Choose from the following methods:

- Get current user: `kele.get_me`
- Get mentor availability: `kele.get_mentor_availability`
- Get roadmap: `kele.get_roadmap(id)`
- Get checkpoint: `kele.get_checkpoint(id)`
- Get messages: `kele.get_messages(page_no)` (if no page number is entered message threads paginated with 10 threads per page is returned)
- Create message: `kele.create_message(sender_email, recipient_id, subject, message)`
- Create checkpoint submission: `kele.create_submission(checkpoint_id, assignment_branch, assignment_commit_link, comment)`
- Update checkpoint submission: `kele.update_submission(id, checkpoint_id, assignment_branch, assignment_commit_link, comment)`
