require 'rspec/core/rake_task'

task :default => :test
task :test => :spec

if !defined?(RSpec)
  puts "spec targets require RSpec"
else
  desc "Run all examples"
  RSpec::Core::RakeTask.new() do |t|
    t.pattern = "spec/**/*.rb"
  end
end

namespace :db do
  desc 'Auto-migrate the database (destroys data)'

  task :migrate => :environment do
    DataMapper.auto_migrate!
  end

  desc 'Auto-upgrade the database (preserves data)'
  task :upgrade => :environment do
    DataMapper.auto_upgrade!
  end
end

namespace :gems do
  desc 'Install required gems'
  task :install do
    required_gems = %w{ sinatra rspec rack-test dm-core dm-validations
                        dm-aggregates haml }
    required_gems.each { |required_gem| system "sudo gem install #{required_gem}" }
  end
end

task :environment do
  require 'environment'
end
