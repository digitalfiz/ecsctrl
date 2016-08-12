
module EcsCtrl
  class Validator
    def valid_cmd?(cmd)
      File.exist?(File.dirname(__FILE__) + "/commands/#{cmd}.rb")
    end
  end
end
