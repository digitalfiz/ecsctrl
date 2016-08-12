require 'ecsctrl/commands/command'

module EcsCtrl
  module Commands
    class Ssh < EcsCtrl::Commands::Command
      def run(options)
        setup(options[:profile])
        # Return quick if a cluster is not specified
        raise 'You must specify a cluster to use the \'ssh\' command.' unless options.key?(:cluster)

        @aws.get_cluster_instances(options[:cluster])
      end
    end
  end
end
