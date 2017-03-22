require 'rake'
require 'rspec/core/rake_task'

# task :block_smoke do
#   RSpec::Core::RakeTask.new(:block) do |t|
#     t.pattern = 'spec/smoke/block_spec.rb'
#   end
#   Rake::Task["block"].execute
# end

RSpec::Core::RakeTask.new(:single) do |t|
  ENV['CONFIG_NAME'] ||= "single"
  t.pattern = Dir.glob('spec/**/*_spec.rb')
  t.rspec_opts = '--format documentation'
  t.verbose = false
end
task :default => :single


# task :text_smoke do
#   RSpec::Core::RakeTask.new(:text) do |t|
#     t.pattern = 'spec/smoke/text_spec.rb'
#   end
#   Rake::Task["text"].execute
# end

# task :icon_smoke do
#   RSpec::Core::RakeTask.new(:icon) do |t|
#     t.pattern = 'spec/smoke/icon_spec.rb'
#   end
#   Rake::Task["icon"].execute
# end

# task :button_smoke do
#   RSpec::Core::RakeTask.new(:button) do |t|
#     t.pattern = 'spec/smoke/button_spec.rb'
#   end
#   Rake::Task["button"].execute
# end


# # task :smoke do
# #   Rake::Task.tasks.each do |t| 
# #     if !(/^.*_smoke$/=~ t.name).nil?
# #       t.invoke do
# #       end
# #     end
# #   end
# # end

# # task :default do
# # end