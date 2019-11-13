require_relative 'lib/teuton-client/application'

Gem::Specification.new do |s|
  s.name        = Application::NAME
  s.version     = Application::VERSION
  s.date        = '2019-11-08'
  s.summary     = "TeutonClient (Teuton Software)"
  s.description = <<-EOF
  TeutonClient send evaluation requests to TeutonServer.

  Teuton Software is an infrastructure test application,
  that is installed into host called T-NODE. T-NODE user monitorize
  remote S-NODE users machines using Teuton.

  When a S-NODE user wants to be tested, must wait until T-NODE user
  launch manually Teuton test units. Or start TeutonServer and attend
  request automatically.

  Teuton client is used for S-NODE users, to send request to TeutonServer
   (T-NODE host). This way, S-NODE host is evaluated by the server at any time
   without T-NODE user intervention.
  EOF

  s.license     = 'GPL-3.0'
  s.authors     = ['David Vargas Ruiz']
  s.email       = 'teuton.software@protonmail.com'
  s.homepage    = 'https://github.com/dvarrui/teuton-client'

  s.executables << 'teuton-client'
  s.files       = Dir.glob(File.join('lib','**','*.rb')) +
                  Dir.glob(File.join('docs','**','*.md'))

  s.add_runtime_dependency 'rainbow', '~> 3.0'
  s.add_development_dependency 'minitest', '~> 5.11'
end
