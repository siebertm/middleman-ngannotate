require "middleman-core"
require "middleman-ngannotate/version"

::Middleman::Extensions.register(:ngannotate) do
  require "middleman-ngannotate/extension"
  ::Middleman::Ngannotate::NgannotateExtension
end
