require 'rake'
require 'fileutils'

# Default task: Display a welcome message
desc "Default task: Display a welcome message"
task :default do
  puts "Welcome to the Ruby Team 05 Project!"
  puts "Run 'rake -T' to see available tasks."
end

# Task for running tests
desc "Run all tests"
task :test do
  puts "Running tests..."
  if File.exist?('spec')
    system("bundle exec rspec")
  elsif File.exist?('test')
    system("bundle exec rake test")
  else
    puts "No test folder found! Create a 'spec' or 'test' directory to use this task."
  end
end

# Task for cleaning temporary or build files
desc "Clean temporary files"
task :clean do
  puts "Cleaning temporary files..."
  ['tmp', 'build', 'log'].each do |dir|
    if Dir.exist?(dir)
      FileUtils.rm_rf(dir)
      puts "Removed #{dir}/"
    end
  end
  puts "Cleanup completed."
end

# Namespace for database-related tasks
namespace :db do
  # Task for running database migrations
  desc "Run database migrations"
  task :migrate do
    puts "Running database migrations..."
    if File.exist?('db/migrate')
      system("bundle exec rake db:migrate")
    else
      puts "No migrations found! Make sure a 'db/migrate' directory exists."
    end
  end

  # Task for resetting the database
  desc "Reset the database"
  task :reset do
    puts "Resetting the database..."
    if File.exist?('db/migrate')
      system("bundle exec rake db:drop db:create db:migrate")
    else
      puts "No database found to reset! Ensure migrations exist in 'db/migrate'."
    end
  end
end

# Task for setting up the project environment
desc "Set up the project"
task :setup do
  puts "Setting up the project..."
  if File.exist?('Gemfile')
    system("bundle install")
  else
    puts "No Gemfile found! Create one to manage project dependencies."
  end
end
