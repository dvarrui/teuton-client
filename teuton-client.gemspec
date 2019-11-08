Gem::Specification.new do |s|
  s.name        = 'teuton-client'
  s.version     = '0.0.0'
  s.date        = '2019-11-08'
  s.homepage    = 'https://github.com/dvarrui/teuton-client'
  s.summary     = "Teuton Client"
  s.description = "TeutonClient send evaluation requests to TeutonServer"
  s.license     = 'GPL-3.0'
  s.authors     = ["David Vargas Ruiz"]
  s.email       = 'teuton.software@protonmail.com'
  s.executables << 'teuton-client'
  s.files       = %w[lib/client/files/client.yaml
                   lib/client/input_loader.rb
                   lib/teuton-client.rb]
end
