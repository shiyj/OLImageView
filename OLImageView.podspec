Pod::Spec.new do |s|
  s.name         = "OLImageView"
  s.version      = "1.5"
  s.summary      = "Animated GIFs implemented the right way."
  s.homepage     = "https://www.github.com/ondalabs/OLImageView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Diego Torres" => "contact@dtorres.me" }
  s.source       = { :git => "https://github.com/ondalabs/OLImageView.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.framework  = 'ImageIO', 'MobileCoreServices', 'QuartzCore'
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'OLImage.{h,m}', 'OLImageView.{h,m}', 'OLImageViewDelegate.h'
  end

  s.subspec 'AFNetworking4' do |ss|
    s.platform = :ios, '7.0'
    ss.dependency 'OLImageView/Core'
    ss.dependency 'AFNetworking', '~> 4.0'
    ss.source_files = "AFNetworking/OL*.{h,m}"
  end
end
