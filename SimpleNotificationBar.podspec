Pod::Spec.new do |s|
  s.name             = 'SimpleNotificationBar'
  s.module_name      = 'SimpleNotificationBar'
  s.version          = '0.1.0'
  s.summary          = 'Easy drop down notification for your users'

  s.description      = <<-DESC
Easy drop down notification for your users including errors and successes
                       DESC

  s.homepage         = 'https://github.com/Redbooth/SimpleNotificationBar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'twof' => 'fabiobean2@gmail.com' }
  s.source           = { :git => 'https://github.com/Redbooth/SimpleNotificationBar.git', :tag => s.version }
  s.social_media_url = 'https://twitter.com/TheWisestFools'

  s.ios.deployment_target = '10.3'
  s.swift_version = '4.2'

  s.source_files = 'RedboothNotificationBar/Classes/**/*'

  s.dependency 'SwiftMessages'
end
