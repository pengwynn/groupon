require File.join([File.dirname(__FILE__),'lib','groupon','version.rb'])

Gem::Specification.new do |s|
  s.name = %q{groupon}
  s.version = Groupon::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_rubygems_version = ">= 1.3.6"
  s.authors = ["Wynn Netherland"]
  s.date = %q{2010-05-23}
  s.description = %q{Wrapper for the Groupon API}
  s.email = %q{wynn.netherland@gmail.com}
  s.files = Dir.glob("{lib}/**/*")
  s.homepage = %q{http://github.com/pengwynn/groupon}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Wrapper for the Groupon API}
  s.test_files = [
    "test/helper.rb",
     "test/groupon_test.rb"
  ]

  s.add_dependency "hashie", ">= 0.1.3"
  s.add_dependency "httparty", ">= 0.1.0"
  s.add_development_dependency "shoulda", ">= 2.10.1"
  s.add_development_dependency "mg", ">= 0.0.8"
  s.add_development_dependency "redgreen"
  s.add_development_dependency "jnunemaker-matchy", "= 0.4.0"
  s.add_development_dependency "fakeweb", ">= 1.2.5"
  s.add_development_dependency "yard", ">= 0"
end

