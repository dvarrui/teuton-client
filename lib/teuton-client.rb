require 'fileutils'
require 'rainbow'
require 'socket'
require_relative 'teuton-client/input_loader'
require_relative 'teuton-client/application'

module TeutonClient

  def self.run(args)
    hostname, port = InputLoader.read_input_args(args)
    connect_to_server(hostname, port)
    exit 0
  end

  def self.connect_to_server(hostname='localhost', port='6174')
    puts Rainbow("teuton-client => Waiting...   " +
                 "#{hostname}:#{port} (teuton-server)").bright
    begin
      s = TCPSocket.open(hostname, port)
    rescue
      puts Rainbow("teuton-client => " +
                   "ERROR        teuton-server not found!" +
                   " [#{hostname}:#{port}]").bright.red
      exit 1
    end
    while line = s.gets    # Read lines from the socket
      puts "              => #{line.chop}"
    end
    s.close                # Close the socket when done
  end

  def self.show_help
    puts "Usage:"
    puts "    teuton-client [help|version] [IP [PORT]]"
    puts "Params:"
    puts "    help    , Show this help"
    puts "    init    , Create \'#{Application::CONFIGFILE}\' config file"
    puts "    IP PORT , Teuton server IP and/or PORT"
    puts "    version , Show current version"
    exit 0
  end

  def self.show_version
    puts "teuton-client => " +
         Rainbow("version #{Application::VERSION}").cyan
    exit 0
  end

  def self.init
    src = File.join(File.dirname(__FILE__), 'teuton-client', 'files',
          Application::CONFIGFILE)
    dest = File.join(Application::CONFIGFILE)
    if File.exists? dest
      puts "teuton-client => " + Rainbow("File \'#{dest}\' exists!").red
      exit 1
    end
    FileUtils.cp(src, dest)
    puts "teuton-client => " + Rainbow("Init \'#{dest}\' done!").yellow
    exit 0
  end
end
