# testpodfile
测试cocoapods
cocoapods 
3种类形依赖

1,静态库 .a ， .framework  pod库
2,动态库 .framework pod库
3,源代码pod库

app 

Podfile
```
target 'testapp' do
  # Comment the next line if you don't want to use dynamic frameworks
#  use_frameworks!

  # Pods for testapp

  pod 'sourcecode',:path=>'../sourcecode'
  pod 'dynamicframework',:path=>'../dynamicframework'
  pod 'astaticlib',:path=>'../astaticlib'
  
  target 'testappTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'testappUITests' do
    # Pods for testing
  end

end

```

不用use_frameworks!



![不用useframeworks.png](https://upload-images.jianshu.io/upload_images/45726-1205b3cd32ef412a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

用了use_frameworks!


![useframeworks.png](https://upload-images.jianshu.io/upload_images/45726-7c32914ad086f9de.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


测试demo
