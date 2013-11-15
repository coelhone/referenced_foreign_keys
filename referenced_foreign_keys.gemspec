Gem::Specification.new do |s|
  s.name        = 'referenced-foreign-keys'
  s.version     = '0.0.1'
  s.date        = '2013-11-14'
  s.summary     = "Referenced Foreign Keys"
  s.description = "Foreign keys added on references"
  s.authors     = ["coelhone"]
  s.email       = ["brunoflcoelho@gmail.com"]
  s.files       = ["lib/referenced_foreign_keys.rb"]
  s.homepage    = "http://github.com/coelhone/referenced_foreign_keys"
  s.license     = 'WTFPL'

  s.add_dependency 'foreigner'
end
