require 'rspec/core/rake_task'

task :e2e_block do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = 'spec/block_spec.rb'
  end
  Rake::Task["spec"].execute
end

