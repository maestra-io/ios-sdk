Pod::Spec.new do |spec|
  spec.name         = "MindboxNotifications"
  spec.version      = "2.16.0"
  spec.summary      = "SDK for integration notifications with Maestra"
  spec.description  = "This library allows you to integrate notifications and transfer them to Maestra"
  spec.homepage     = "https://github.com/maestra-io/ios-sdk"
  spec.author       = { "Maestra" => "support@maestra.io" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/maestra-io/ios-sdk.git", :tag => spec.version }
  spec.source_files  = "MindboxNotifications/**/*.{swift}", "SDKVersionProvider/**/*.{swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.resource_bundles = { 
    'MindboxNotifications' => ['MindboxNotifications/**/*.xcprivacy'] 
  }
  spec.swift_version = "5"

end
