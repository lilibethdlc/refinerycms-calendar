# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-calendar'
  s.version           = '2.0.0'
  s.description       = 'Ruby on Rails Calendar extension for Refinery CMS'
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = 'Calendar extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['**/*']
  s.authors           = ["Neoteric Design", "Joe Sak", "Philip Arndt"]
  s.email             = %q{joe@neotericdesign.com}
  s.homepage          = "https://github.com/resolve/refinerycms-calendar"

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.0'

end
