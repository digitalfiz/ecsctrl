require 'ecsctrl/aws'

module EcsCtrl
  module Commands
    class Command
      def setup(profile)
        @aws = EcsCtrl::Aws.new(profile)
      end
    end
  end
end
