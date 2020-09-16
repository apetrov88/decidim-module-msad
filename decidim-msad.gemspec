# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "decidim/msad/version"

Gem::Specification.new do |spec|
  spec.name = "decidim-msad"
  spec.version = Decidim::Msad::VERSION
  spec.authors = ["Antti Hukkanen"]
  spec.email = ["antti.hukkanen@mainiotech.fi"]

  spec.summary = "Provides possibility to bind Microsoft Active Directory (AD) authentication provider to Decidim."
  spec.description = "Adds Microsoft Active Directory (AD) authentication provider to Decidim."
  spec.homepage = "https://github.com/mainio/decidim-module-msad"
  spec.license = "AGPL-3.0"

  spec.files = Dir[
    "{app,config,lib}/**/*",
    "LICENSE-AGPLv3.txt",
    "Rakefile",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  spec.add_dependency "decidim-core", Decidim::Msad::DECIDIM_VERSION
  spec.add_dependency "omniauth-saml", "~> 1.10.2"

  spec.add_development_dependency "decidim-dev", Decidim::Msad::DECIDIM_VERSION
end
