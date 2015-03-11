Pod::Spec.new do |s|
s.name             = "NSArray-HYPFind"
s.version          = "0.1"
s.summary          = "A short description of NSArray-HYPFind."
s.description      = <<-DESC
An optional longer description of NSArray-HYPFind

* Markdown format.
* Don't worry about the indent, we strip it!
DESC
s.homepage         = "https://github.com/hyperoslo/NSArray-HYPFind"
s.license          = 'MIT'
s.author           = { "Hyper AS" => "teknologi@hyper.no" }
s.source           = { :git => "https://github.com/hyperoslo/NSArray-HYPFind.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/hyperoslo'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'Source/**/*'

# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end