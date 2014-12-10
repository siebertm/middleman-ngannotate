require 'middleman-ngannotate/processor'

module Middleman
  module Ngannotate
    class NgannotateExtension < Extension
      def after_configuration
        app.sprockets.register_postprocessor 'application/javascript', Processor
      end
    end
  end
end
