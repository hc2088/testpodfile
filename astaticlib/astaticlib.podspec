Pod::Spec.new do |s|

  s.name         = "astaticlib"
  s.version      = "10.14.0"
  s.summary      = "astaticlib"
  s.homepage     = "git@github.com:hc2088/apple.git"

  s.description  = <<-DESC
                   #定位工程
                   DESC
  s.license      = {
    :type => 'applelicense',
    :text => <<-LICENSE

    LICENSE
  }

  s.authors      = { "huchu"=>"xx@github.com", "company" => "apple@github.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "git@github.com:hc2088/apple.git", :tag => "#{s.version}" }
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  s.requires_arc  = true
  s.header_dir = 'astaticlib'
  s.vendored_libraries = 'Products/*.a'
  # s.preserve_paths = 'Products/*.a'
  s.source_files = 'Products/**/*.{h,m}'
  s.xcconfig = {
    'OTHER_LDFLAGS'         => '-ObjC',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }


end
