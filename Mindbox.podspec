Pod::Spec.new do |spec|
  spec.name         = "Mindbox"
  spec.version      = "2.16.0"
  spec.summary      = "SDK for integration with Maestra"
  spec.description  = "This library allows you to integrate data transfer to Maestra"
  spec.homepage     = "https://github.com/maestra-io/ios-sdk"
  spec.author       = { "Maestra" => "support@maestra.io" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/maestra-io/ios-sdk.git", :tag => spec.version }
  spec.source_files  = "Mindbox/**/*.{swift}", "SDKVersionProvider/**/*.{swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.resource_bundles = { 
    'Mindbox' => ['Mindbox/**/*.xcassets', 'Mindbox/**/*.xcdatamodeld', 'Mindbox/**/*.xcprivacy']
  } 
  spec.swift_version = "5"
  spec.dependency 'MindboxLogger', '2.16.0'

end
