require 'sprockets/processor'
require 'execjs'

# Taken from https://github.com/jasonm/ngannotate-rails/blob/master/lib/ngannotate/processor.rb
module Middleman
  module Ngannotate
    class Processor < ::Sprockets::Processor
      def self.name
        'Middleman::Ngannotate::Processor'
      end

      def prepare
        ngannotate_source = File.open(File.join(File.dirname(__FILE__), '../../vendor/ngannotate.js')).read

        @context = ExecJS.compile "window = {};" + ngannotate_source
      end

      def evaluate(context, locals)
        opt = { add: true }
        r = @context.call 'window.annotate', data, opt
        r['src']
      end
    end
  end
end
