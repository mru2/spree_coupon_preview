Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_coupon_preview'
  s.version     = '0.2.0'
  s.summary     = 'Allows a preview of the final price when entering a coupon code'
  s.description = 'Allows a preview of the final price when entering a coupon code'
  s.required_ruby_version = '>= 1.8.7'

  s.authors     = ["David Ruyer", "Benjamin Roth"]
  s.email       = ["david.ruyer@gmail.com", "benjamin.roth@peachyweb.com"]

  s.homepage    = 'https://github.com/MrRuru/spree_coupon_preview'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'config/**/*', 'public/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  # s.add_dependency('spree_core', '>= 0.60.99')
end
