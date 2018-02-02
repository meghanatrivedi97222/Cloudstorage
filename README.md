Refer the below link also 

http://cocoadocs.org/docsets/cloudrail-si-ios-sdk/1.0.0/Protocols/PersistableProtocol.html

 http://cocoadocs.org/docsets/cloudrail-si-ios-sdk/1.0.0/Protocols/AuthenticatingProtocol.html

https://cloudrail.com/integrations/interfaces/CloudStorage;serviceIds=Box%2CDropbox%2CEgnyte%2CGoogleDrive%2COneDrive;platformId=Swift

https://cloudrail.com/

and Pod install


# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Cloudstorage' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'cloudrail-si-ios-sdk'
  pod 'Toast-Swift', '~> 2.0.0'

  # Pods for Cloudstorage

end


second type to pod install  is below 

platform :ios, ’10.0’
use_frameworks!

target ‘your project name’ do
 pod 'cloudrail-si-ios-sdk'
  pod 'Toast-Swift', '~> 2.0.0'
 end

also helo the  cloudrail supporter
