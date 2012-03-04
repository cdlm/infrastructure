PREFIX = ENV['HOME']
RSYNC_OPTIONS = %w{ --archive --checksum --itemize-changes --human-readable --cvs-exclude -FF } # .rsync-filter
FILE_DIFF_OPTIONS = %w{ --brief --exclude=.git* }
DIR_DIFF_OPTIONS  = FILE_DIFF_OPTIONS + %w{ --recursive }

task :default => :install

def dest relative_path, options={}
    prefix = options[:prefix] || PREFIX
    dest_path = block_given?  ?  yield(relative_path)  :  relative_path
    File.join prefix, dest_path
end

def rsync src, target, options={}
    sh 'rsync', *(options[:options] || RSYNC_OPTIONS), src, target
    touch target, verbose:false
end

def rsync_task name, srcGlob, destOptions={}, &block
    task name
    FileList[srcGlob].each do |src|
        target = dest(src, destOptions, &block)
        file target => FileList[src, "#{src}/**/*"] do |task|
            if File.directory? src
                rsync src+'/', target
            else
                cp src, target
            end
        end
        task name => target
    end
end

def diff_task name, srcGlob, destOptions={}, &block
    task name do |t|
        FileList[srcGlob].each do |src|
            target = dest(src, destOptions, &block)
            options = File.directory?(src)  ? DIR_DIFF_OPTIONS  :  FILE_DIFF_OPTIONS
            sh 'diff', *options, src, target, verbose:false do |ok, res|
                raise "Problem running diff" if !ok && res.exitstatus != 1
            end
        end
    end
end


namespace :dotfiles do

    DOTFILES_PATH_TRANSFORM = lambda do |path|
        path.gsub /^dotfiles\//, '.'
    end

    desc 'Install config files'
    rsync_task :install, 'dotfiles/*', &DOTFILES_PATH_TRANSFORM

    desc 'Compare source vs deployed config files'
    diff_task :diff, 'dotfiles/*', &DOTFILES_PATH_TRANSFORM

end
task :install => 'dotfiles:install'


namespace :tools do

    TOOLS_PATH_TRANSFORM = lambda do |path|
        path.gsub /^tools/, 'bin'
    end

    desc 'Install executable scripts'
    rsync_task :install, 'tools/*', &TOOLS_PATH_TRANSFORM

end
task :install => 'tools:install'
