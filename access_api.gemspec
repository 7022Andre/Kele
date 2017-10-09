Gem::Specification.new do |s|
  s.name          = 'access_api'
  s.version       = '0.0.1'
  s.date          = '2017-10-09'
  s.summary       = 'AccessAPI is a lightweight gem using httparty for accessing the Bloc REST web services.'
  s.description   = 'A Ruby gem client for the Bloc API'
  s.authors       = ['7022Andre']
  s.email         = '7022Andre@users.noreply.github.com'
  s.files         = ['lib/access_api.rb', 'lib/roadmap.rb', 'lib/messages.rb']
  s.require_paths = ["lib"]
  s.homepage      = 'http://rubygems.org/gems/access_api'
  s.license       = 'MIT'
  s.add_runtime_dependency 'httparty', '~> 0.15'
  s.add_runtime_dependency 'json', '~> 2.1'
end
