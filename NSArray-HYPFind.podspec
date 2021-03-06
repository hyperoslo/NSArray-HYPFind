Pod::Spec.new do |s|
s.name             = "NSArray-HYPFind"
s.version          = "0.1"
s.summary          = "Easy find methods for NSArray"
s.homepage         = "https://github.com/hyperoslo/NSArray-HYPFind"
s.license          = 'MIT'
s.author           = { "Hyper AS" => "teknologi@hyper.no" }
s.source           = { :git => "https://github.com/hyperoslo/NSArray-HYPFind.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/hyperoslo'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'Source/**/*'

s.frameworks = 'Foundation'
end
