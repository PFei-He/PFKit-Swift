[PFKit-Swift](https://github.com/PFei-He/PFKit-Swift)
===

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg)](https://raw.githubusercontent.com/PFei-He/PFKit-Swift/master/LICENSE)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS%208%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)&nbsp;
[![Cocoapods Compatible](https://img.shields.io/cocoapods/v/PFKit-Swift.svg)](https://img.shields.io/cocoapods/v/PFKit-Swift.svg)

对系统API进行简单封装，实现常用功能

版本
---
0.1.2

说明
---
#### Foundation
* `PFFile` - 实现文件生成和读写功能
* `PFModel` - JSON模型的基类
* `PFQRCode` - 利用AVFoundation框架生成二维码
* `PFTime` - 实现时间获取和转化功能

#### Extension
* `PFString` - String扩展
* `PFView` - UIView扩展

安装
---
#### 手动安装
```
将`PFKit-Swift`文件夹拖入到工程目录中即可使用
```

#### CocoaPods
```
platform:ios, '8.0'
use_frameworks!

pod "PFKit-Swift", "~> 0.1"
```

许可证
---
`PFKit-Swift`使用 MIT 许可证，详情见 [LICENSE](https://raw.githubusercontent.com/PFei-He/PFKit-Swift/master/LICENSE) 文件。
