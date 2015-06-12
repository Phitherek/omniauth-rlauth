$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'omniauth/rlauth/version'

Gem::Specification.new do |s|
    s.name = 'omniauth-rlauth'
    s.version = OmniAuth::RLAuth::VERSION
    s.author = 'Phitherek_'
    s.email = %w(phitherek@gmail.com)
    s.summary = 'An OmniAuth OAuth2 strategy for RLAuth'
    s.description = s.summary
    s.homepage = 'https://github.com/Phitherek/omniauth-rlauth'

    s.files = `git ls-files`.split("\n")
    s.require_paths = ['lib']

    s.add_runtime_dependency 'omniauth-oauth2', '~> 1.3.0'
end