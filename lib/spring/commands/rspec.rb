module Spring
  module Commands
    class RSpec
      def env(*)
        ENV["RAILS_ENV"] || "test"
      end

      def exec_name
        "rspec"
      end

      def gem_name
        "rspec-core"
      end
    end

    Spring.register_command "rspec", RSpec.new
    Spring::Commands::Rake.environment_matchers[/^spec($|:)/] = ENV["RAILS_ENV"] || "test"
  end
end
