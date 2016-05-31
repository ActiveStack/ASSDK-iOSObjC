Pod::Spec.new do |s|
  s.name               = "ActiveStack"
  s.version            = "0.2.3"
  s.summary            = "Active Mobile Service Layer for ActiveStack iOS Clients."
  s.homepage           = "https://github.com/v2Nitesh/active-client-sdk-objc.git"
  s.license            = 'MIT'
  s.author             = { "Nitesh Meshram" => "nitesh.meshram@v2solutions.com" }
  s.source             = { :git => "https://github.com/v2Nitesh/active-client-sdk-objc.git", :tag => s.version.to_s }
  s.platform           = :ios, '7.0'
  s.requires_arc       = true
  s.prefix_header_file = 'client-library/ActiveStack-Prefix.pch'
  s.source_files       = 'client-library/**/*'
  

  s.dependency 'Reachability'
  s.dependency 'socket.IO', '0.2.2'
  s.dependency 'gtm-oauth2'

  s.description      = <<-DESC
TODO: ActiveStack Private pod version 0.2.3.
                        DESC
end
