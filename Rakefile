$:.unshift("/Library/RubyMotion/lib")
platform = ENV.fetch('platform', 'ios')
require "motion/project/template/#{platform}"
require 'bundler/gem_tasks'
require 'bundler/setup'
Bundler.require

Motion::Project::App.setup do |app|
end