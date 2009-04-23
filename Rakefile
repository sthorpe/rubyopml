require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'
PKG_FILES = FileList[
    "lib/*", "[A-Z]*", "Rakefile", 
]

spec = Gem::Specification.new do |s| 
  s.name = "rubyopml"
  s.version = "1.1"
  s.author = "Sergey Tikhonov"
  s.email = "st@dairon.net"
  s.homepage = "http://rubyforge.org/projects/rubyrss/"
  s.platform = Gem::Platform::RUBY
  s.summary = "A simplified OPML library"
  s.files = PKG_FILES.to_a
  s.require_path = "lib"
  #s.autorequire = "name"
  s.test_files = FileList[ ].to_a #{}"{test}/**/*test.rb"].to_a
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
  #s.add_dependency("dependency", ">= 0.x.x")
end
 
Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end 

desc 'Install with gems'
task :install => :repackage do
  sh "sudo gem i pkg/#{spec.name}-#{spec.version}.gem"
end


