# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "trusty-layouts-extension"
Gem::Specification.new do |s|
  s.name = %q{trusty-layouts-extension}
  s.version = "3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Sipple", "Michael Klett", "Jim Gay", "William Ross", "Tony Issakov", "Dirk Kelly", "Brittany Martin"]
  s.description = %q{Extends Trusty CMS Layouts to support nesting, sharing with Rails Controllers and rendering HAML}
  s.email = %q{sipple@trustarts.org}
  s.homepage = %q{https://github.com/pgharts/trusty-share-layouts-extension}
  s.summary = %q{Extends Trusty CMS Layouts to support nesting, sharing with Rails Controllers and rendering HAML}
  s.extra_rdoc_files = [
    "README.md"
  ]
  ignores = if File.exist?('.gitignore')
              File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
            else
              []
            end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]

  s.add_dependency 'trusty-cms', '~> 3.1.0'

end
