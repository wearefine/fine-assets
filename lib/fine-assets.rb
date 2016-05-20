require 'fine-assets/version'
require 'fine-assets/sources'
require 'fine-assets/submodule'
require 'fine-assets/engine'

module FineAssets
  def self.root
    File.dirname __dir__
  end
end
