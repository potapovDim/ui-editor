require 'rake'
require 'rspec/core/rake_task'

task :smoke_block do
  RSpec::Core::RakeTask.new(:block) do |t|
    t.pattern = 'spec/block_spec.rb'
  end
  Rake::Task["block"].execute
end

task :smoke_text do
  RSpec::Core::RakeTask.new(:text) do |t|
    t.pattern = 'spec/text_spec.rb'
  end
  Rake::Task["text"].execute
end

task :default do
  Rake::Task.tasks.each do |t| 
    t.invoke do 
    end
  end
end