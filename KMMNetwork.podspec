Pod::Spec.new do |spec|
    spec.name                     = 'KMMNetwork'
    spec.version                  = '1.0.0'
    spec.homepage                 = 'https://github.com/swathipete26/KMMNetwork'
    spec.source                   = { :git => 'https://github.com/swathipete26/KMMNetwork.git', :tag => "1.0.0" }
    spec.authors                  = { 'swathipete26' => 'swathi.p@atherenergy.com' }
    spec.license                  = { :type => "MIT", :file => "LICENSE" }
    spec.summary                  = 'KMM Shared Library'

    spec.vendored_frameworks      = "KMMNetwork.xcframework"
    spec.libraries                = "c++"
    spec.module_name              = "#{spec.name}_umbrella"

    spec.platform                 = :ios, "13.0"
    spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
