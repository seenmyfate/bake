require "bake/version"
require 'rake'

module Bake
  class Application < Rake::Application
    include Rake::DSL

    def run
      Rake.application = self
      super
    end

    def load_rakefile
      @name = 'bake'
      desc "An example task"
      task :example do
        puts "Bake!"
      end

      task default: :example
    end
  end
end
