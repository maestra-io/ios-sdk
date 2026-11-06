Pod::Spec.new do |spec|
  spec.name         = "MindboxLogger"
  spec.version      = "2.16.0"
  spec.summary      = "SDK for utilities to work with Maestra"
  spec.description  = "-"
  spec.homepage     = "https://github.com/maestra-io/ios-sdk"
  spec.author       = { "Maestra" => "support@maestra.io" }
  spec.platform     = :ios, "12.0"
  spec.source       = { :git => "https://github.com/maestra-io/ios-sdk.git", :tag => "#{spec.version}" }
  spec.source_files  = "MindboxLogger/**/*.{swift}", "SDKVersionProvider/**/*.{swift}"
  spec.exclude_files = "Classes/Exclude"
  spec.resource_bundles = { 
   'MindboxLogger' => ["MindboxLogger/**/*.xcdatamodeld", 'MindboxLogger/**/*.xcprivacy']
  } 
  spec.swift_version = "5"

end
