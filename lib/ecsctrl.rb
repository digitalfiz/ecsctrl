require 'ecsctrl/validator'
require 'logger'

module EcsCtrl
  class Main
    def init(options)
      puts "Starting with profile #{options[:profile]}..."
    end

    def run(options)
      init(options)
      # Ruby is so ugly sometimes...
      if EcsCtrl::Validator.new.valid_cmd? options[:cmd]
        require "ecsctrl/commands/#{options[:cmd]}"
        command = Object.const_get("EcsCtrl::Commands::#{options[:cmd].capitalize}").new
        command.run(options)
      else
        raise 'Invalid command. Exiting...'
      end
    end
  end
end
