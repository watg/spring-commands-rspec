module Spring
  module Commands
    class Features < RSpec
      def env(*)
        "features"
      end
    end

    Spring.register_command "features", Features.new
    Spring::Commands::Rake.environment_matchers[/^features($|:)/] = "features"
  end
end
