# ZLPopMenuViewController

用UIViewController实现的自定义弹出框

**效果图如下**

![效果图](https://upload-images.jianshu.io/upload_images/1715760-9739e5b89869aafa.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

# 安装
1. 使用`cocoapods`  `Podfile`文件中添加`pod 'ZLPopMenuViewController'`
2. 也可以直接把代码拖到工程中
# 使用
## swift
- 在`viewControll`中添加 `import ZLPopMenuViewController`
```swift
        let datas1: [ZLPopMenuModel] = [.init(itemName: "首页（4）"),
                                        .init(itemName: "首页"),
                                        .init(itemName: "确认")]
        let popVC = ZLPopMenuViewController.init(sourceView: sender, menuData: datas1)
        popVC.didClickItems = {(index, model)in
            
        }
        present(popVC, animated: true, completion: nil)
```
## Objective-C
- 在`viewControll中`添加 `#import <ZLPopMenuViewController/ZLPopMenuViewController-Swift.h>`
```Objective-C
        ZLPopMenuModel *model = [[ZLPopMenuModel alloc]initWithItemName:@"菜单" imageName:nil];
        
        ZLPopMenuViewController *popVC =[[ZLPopMenuViewController alloc] initWithSourceView:testView
                                                                                    menuData:@[model, model, model]
                                                                                   menuStyle:ZLPopMenuStyleWhite
                                                                               popMenuConfig:[ZLPopMenuConfig default]];
        [self presentViewController:popVC animated:true completion:nil];
        
        [popVC setDidClickItems:^(NSInteger indx, ZLPopMenuModel * _Nonnull model) {
            NSLog(@"OC中点击了 %ld, %@", indx, model);
        }];
```
欢迎大家随意改样式。


