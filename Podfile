project 'PictureStore.xcodeproj'
 
# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
 
def shared_pods
	pod 'Firebase/Analytics'
	pod 'Firebase/Auth'
	pod 'Firebase/Firestore'
	pod 'Firebase/Storage'
	pod 'Firebase/Functions'
	pod 'IQKeyboardManagerSwift'
	pod 'Kingfisher', '~> 5.0'
end
 
 
target 'PictureStore' do
# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!
 
# Pods for PictureStore
	shared_pods
	pod 'Stripe', '19.3.0'
end
 
target 'PictureStoreAdmin' do
# Comment the next line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!
 
# Pods for PictureStoreAdmin
	shared_pods
end