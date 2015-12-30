#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "${POD_NAME}"
  s.version          = "0.1.0"
  s.summary          = "A short description of ${POD_NAME}."
  s.description      = <<-DESC.gsub(/^\s*\|?/,'')
                       An optional longer description of ${POD_NAME}

                       | * Markdown format.
                       | * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://git.xiaojukeji.com/one-ios/${POD_NAME}"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'BSD'
  s.author           = { "${USER_NAME}" => "${USER_EMAIL}" }
  s.source           = { :git => "https://git.xiaojukeji.com/one-ios/${POD_NAME}.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '6.0'
  s.requires_arc = true
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.source_files = 'Pod/Classes/**/*'

  # Uncomment following lines if ${POD_NAME} has some resource files.
  # s.resource_bundles = {
  #   '${POD_NAME}' => ['Pod/Assets/*.png']
  # }

  # Uncomment following lines if ${POD_NAME} needs to link with some static libraries.
  # s.vendored_libraries = [
  #   'Pod/lib/a-static-library.a',
  # ]

  # Uncomment following lines if ${POD_NAME} depends on any system framework.
  # s.frameworks = 'UIKit', 'MapKit'

  # Uncomment following lines if ${POD_NAME} depends on any public or private pod.
  # s.dependency 'AFNetworking', '~> 2.5.4'
  # s.dependency 'JSONModel', '~> 1.1.0'
  # s.dependency 'libextobjc', '~> 0.4.1'
  # s.dependency 'ReactiveCocoa', '~> 2.5.0'
  # s.dependency 'ReactiveViewModel', '~> 0.3.0'

end
