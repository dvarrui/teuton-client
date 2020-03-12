require 'yaml'
require_relative 'application'

##
# Methods that read config params
module InputLoader
  ##
  # Read input arguments and return config params.
  # Arguments:
  # * YAML file => Read file.yaml as config file
  # * Empty
  #     * Exist default config file => Read config file
  #     * Dosn't exist config file  => Set defaults IP, PORT values
  # @param input [Array] Input ARGVS
  # @return [String, Integer] Server IP and Server PORT
  def self.read_configuration(input)
    if input.size.zero? && File.exists?(Application::CONFIGFILE)
      param = read_yaml(Application::CONFIGFILE)
      return param[:server][:ip], param[:server][:port]
    end
    unless input.size == 2
      puts "Usage: teuton-client help"
      exit 1
    end

    ip = input[0]
    port = (input[1].to_i > 16000 ? input[1] : (input[1].to_i + 16000).to_s)
    return ip, port
  end

  ##
  # Read YAML configuration file.
  # @param filepath [String] Path to YAML config file.
  # @return [Hash] YAML file content.
  def self.read_yaml(filepath)
    unless File.exists? filepath
      puts "teuton-client => " +
           Rainbow("[ERROR] Config file  \'#{filepath}\' not found!").red
      exit 1
    end
    return YAML.load_file(filepath)
  end
end
