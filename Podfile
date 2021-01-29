platform :ios, '14.0'
use_frameworks!
inhibit_all_warnings!
workspace 'CleanMonoSwift'

def networking
  pod 'Alamofire', '~> 5.2'
end

## NetworkCore

target 'NetworkCore' do
  project 'Data/Core/NetworkCore/NetworkCore'
  
  networking
  
end