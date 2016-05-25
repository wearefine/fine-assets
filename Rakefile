require 'bundler/setup'
require 'bundler/gem_tasks'
require 'fine-assets'

desc 'Update all sources or update a specific source using the asset= argument'
task :update, [:asset] do |t, args|
  args.with_defaults(:asset => false)

  if args[:asset].blank?
    FineAssets::Submodule.update_all
  else
    subtree = FineAssets::Submodule.new(args[:asset])
    subtree.update
    subtree.copy_files
  end
end

desc 'Add commit message after updating submodules'
task :commit, [:asset] do |t, args|
  args.with_defaults(:asset => false)

  # Retrieve last automated, generated commit
  last_commit = `git log --oneline --grep='Automated: Update' -1`
  # Current git submodules
  current_submodule_commits = `git submodule`
  updated_sources = []

  FineAssets::SOURCES.each do |name, files|
    # CAPTURE commit hash (alphanumeric) + space + "submodules" + / + name of library + space + (branch name, could include alphanumeric, period, forward slash and dash)
    reg = /\+?(\w+)\ssubmodules\/#{name}\s\([\w.\-\/]+\)/
    last_sha = reg.match(last_commit)
    current_sha = reg.match(current_submodule_commits)

    next if last_sha.blank?

    # Only add the library to updated sources if the commits don't match
    updated_sources << name unless last_sha[1] == current_sha[1]
  end

  if args[:asset].blank?
    if updated_sources.blank?
      puts 'Nothing to commit'
    else
      # Only add pertinent submodule information (by way of grep)
      `git commit -am "Automated: Update libraries #{updated_sources.join(', ')} \n $(git submodule | grep '#{updated_sources.join('\|')}')"`
      puts 'Commit generated; don\'t forget to push'
    end
  else
    if updated_sources.include? args[:asset]
      `git commit -am "Automated: Update #{args[:asset]} \n $(git submodule | grep '#{args[:asset]}')"`
      puts 'Commit generated; don\'t forget to push'
    else
      puts 'Nothing to commit'
    end
  end
end
