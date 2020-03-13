
require_relative '../teuton-client'

# TeutonClient has these main actions:
# * help    => show_help
# * version => show_version
# * init    => init or create server config file
# * run     => Run Teuton Client to connect to Teuton Server
module CLI
  ##
  # Run command line interface
  # @param argv (Array)
  def self.start(argv)
    TeutonClient.show_help if argv.first == 'help'
    TeutonClient.show_version if argv.first == 'version'
    TeutonClient.init if argv.first == 'init'
    TeutonClient.run(argv)
  end
end
