platform :ios, '14.0'
use_frameworks!
inhibit_all_warnings!
workspace 'CleanMonoSwift'

def networking
  pod 'Alamofire', '~> 5.2'
end

def ui
  pod 'SDWebImageSwiftUI'
end

target 'CleanMonoSwift' do
  project 'Apps/CleanMonoSwift/CleanMonoSwift'
  
  networking
  ui
  
end

## NetworkCore

target 'NetworkCore' do
  project 'Data/Core/NetworkCore/NetworkCore'
  
  networking
  
end

## Core

target 'Core' do
  project 'Data/Core/Core/Core'
  
  networking
  
end

## Components

target 'Components' do
  project 'UI/Components/Components'
  
  ui
end