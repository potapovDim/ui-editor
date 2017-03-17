require 'rake'
require 'rspec/core/rake_task'

task :block_smoke do
  RSpec::Core::RakeTask.new(:block) do |t|
    t.pattern = 'spec/smoke/block_spec.rb'
  end
  Rake::Task["block"].execute
end

task :text_smoke do
  RSpec::Core::RakeTask.new(:text) do |t|
    t.pattern = 'spec/smoke/text_spec.rb'
  end
  Rake::Task["text"].execute
end

task :smoke do
  Rake::Task.tasks.each do |t| 
    if !(/^.*_smoke$/=~ t.name).nil?
      t.invoke do
      end
    end
  end
end

task :default do
end