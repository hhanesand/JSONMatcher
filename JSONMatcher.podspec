Pod::Spec.new do |s|
  s.name         = "JSONMatcher"
  s.version      = "0.0.1"
  s.summary      = "JSON matcher extension for Nimble"
  s.description  = <<-DESC
                   This is the extension for Nimble to support checking JSON strings/objects.
                   DESC
  s.homepage     = "https://github.com/giginet/JSONMatcher"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author             = { "giginet" => "giginet.net@gmail.com" }
  s.social_media_url   = "http://twitter.com/giginet"
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/giginet/JSONMatcher.git", :tag => "v#{s.version}" }
  s.source_files  = "Sources/JSONMatcher/**/*.{swift,h,m}"
  s.weak_framework = "XCTest"
  s.requires_arc = true
  s.dependency "Nimble", "~> 4.0.0"
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'OTHER_LDFLAGS' => '-weak-lswiftXCTest', 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"' }
end