module FineAssets
  class Submodule
    def initialize(name)
      @name = name

      # Add remote
      unless File.exist? File.join(FineAssets.root, 'submodules', @name)
        update
        copy_files
      end
    end

    # Update specific submodule
    def update
      Dir.chdir FineAssets.root do
        `git submodule update --remote --merge submodules/#{@name}`
      end
    end

    # Copy assets based on the SOURCES constant to their proper locations
    def copy_files
      files = FineAssets::SOURCES[@name]
      files.each do |old_file, new_file|
        old_path = File.join(FineAssets.root, 'submodules', @name, old_file)
        new_path = File.join(FineAssets.root, 'vendor', 'assets', new_file)
        FileUtils.cp_r old_path, new_path, remove_destination: true
      end
    end

    # Update and copy all sources specified in SOURCES constant
    def self.update_all
      Dir.chdir FineAssets.root do
       `git submodule init`
      end

      FineAssets::SOURCES.each do |name, files|
        submod = new(name)
        submod.update
        submod.copy_files
      end
    end

  end
end
