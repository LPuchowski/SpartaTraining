require 'yaml'


class YAMLExample
  
  attr_accessor :env, :user_creds, :list

  def initialize
    @users_creds = YAML.load_file('user_credentials.yml')
    @env = YAML.load_file('environments.yml')
    @list = YAML.load_file('list.yml')
  end

  def print_environments
    puts @env
  end

end

yaml = YAMLExample.new

puts yaml.print_environments

puts yaml.list.class
