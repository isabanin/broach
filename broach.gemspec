Gem::Specification.new do |spec|
  spec.name = 'broach'
  spec.version = '0.1.6'
  
  spec.author = "Manfred Stienstra"
  spec.email = "manfred@fngtps.com"

  spec.description = <<-EOF
    Ruby implementation of 37signal's Campfire API.
  EOF
  spec.summary = <<-EOF
    Ruby implementation of 37signal's Campfire API.
  EOF

  spec.add_dependency('nap', '>= 0.3')

  spec.files = (Dir["lib/**/*.rb"] | ['LICENSE'])

  spec.has_rdoc = true
  spec.extra_rdoc_files = ['LICENSE']
  spec.rdoc_options << "--charset=utf-8"
end
