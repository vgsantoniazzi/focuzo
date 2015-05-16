# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "focuzo"
  gem.homepage = "http://github.com/vgsantoniazzi@gmail.com/focuzo"
  gem.license = "MIT"
  gem.summary = "Light semaphore lamp through Arduino"
  gem.description = "Awesome project"
  gem.email = "vgsantoniazzi@gmail.com"
  gem.authors = ["Victor Antoniazzi"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "focuzo #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
