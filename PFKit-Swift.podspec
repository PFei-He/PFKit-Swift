Pod::Spec.new do |s|
  s.name                    = 'PFKit-Swift'
  s.version                 = '0.1.0'
  s.summary                 = '对系统API进行简单封装，实现常用功能'
  s.homepage                = 'https://github.com/PFei-He/PFKit-Swift'
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'PFei-He' => '498130877@qq.com' }
  s.platform                = :ios, '8.0'
  s.ios.deployment_target   = '8.0'
  s.source                  = { :git => 'https://github.com/PFei-He/PFKit-Swift.git', :tag => s.version, :submodules => true }
  s.requires_arc = true

  s.subspec 'Extension' do |ss|
    ss.source_files = 'PFKit-Swift/Extension/PF{String,View}.swift'
  end

  s.subspec 'PFKit' do |ss|
    ss.source_files = 'PFKit-Swift/PFKit/PF{File,Model,QRCode,Time}.swift'
  end
end
