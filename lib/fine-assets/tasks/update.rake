require 'rake'

namespace :fine_assets do
  desc 'Update all sources or update a specific source using the asset= argument'
  task :update, [:asset] => :environment do |t, args|
    args.with_defaults(:asset => false)

    if args[:asset].blank?
      FineAssets::Submodule.update_all
    else
      subtree = FineAssets::Submodule.new(args[:asset])
      subtree.update
      subtree.copy_files
    end

  end
end
