require 'yaml'
require_relative 'application'

##
# Methods that read config params
module InputLoader
  ##
  # Read input arguments and return config params.
  #
  # @param input [Array] Input ARGVS
  # @return [String, Integer] TeutonServer IP and PORT
  def self.read_input_args(input)
    if input.size.zero? && File.exists?(Application::CONFIGFILE)
      param = read_yaml(Application::CONFIGFILE)
      return param[:server][:ip], param[:server][:port]
    end
    ip = (input[0] ? input[0] : 'localhost')
    port = (input[1] ? input[1] : 16001)
    return ip, port
  end

  ##
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
