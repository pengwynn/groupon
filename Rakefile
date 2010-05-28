require "mg"

MG.new("groupon.gemspec")

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.ruby_opts = ['-rubygems'] if defined? Gem
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
end

desc "Run tests"
task :default => :test