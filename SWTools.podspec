Pod::Spec.new do |spec|

  spec.name         = "SWTools"
  spec.version      = "1.0.1"
  spec.summary      = "Integration tool."

  
  #spec.description  = ""

  spec.homepage     = "https://github.com/Snowxls/SWTools"

  spec.license      = "MIT"


  spec.author             = { "Warlock.Snow" => "1014327199@qq.com" }
  spec.platform     = :ios, "9.0"


  spec.source       = { :git => "https://github.com/Snowxls/SWTools.git", :tag => "1.0.1" }


  spec.source_files  = "SWTools/*.{h,m}"

  spec.frameworks = "UIKit","AVFoundation","Foundation"

end
