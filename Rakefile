require "rspec/core/rake_task"

desc 'Prepare and run tests'
task :spec => ['spec:integration']

namespace :spec do
  RSpec::Core::RakeTask.new("integration") do |task|
    task.pattern = "./spec/{,/*/**}/*_spec.rb"
  end
end
