module EcsCtrl
  class Aws
    def initialize(profile)
      @profile = profile
    end

    def get_cluster_instances(cluster)
      puts "profile: #{@profile},    cluster: #{cluster}"
    end
  end
end
