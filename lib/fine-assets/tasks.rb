require 'rails'
require 'rake'

module FineAssets
  class Railtie < Rails::Railtie
    rake_tasks do
      Dir[File.join(FineAssets.root, 'lib', 'fine-assets', 'tasks/*.rake')].each { |f| load f }
    end
  end
end
