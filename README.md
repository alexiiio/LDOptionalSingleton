# LDOptionalSingleton
通过遵守协议来成为一个单例类，可以继承，父类和子类拥有属于自己的单例对象。遵守协议成为单例类之后，该类的其他获取实例方法都会被禁用。

## Usage
导入文件：   
![LDOptionalSingleton](https://raw.githubusercontent.com/alexiiio/LD-Notes/master/pics/LDOptionalSingleton.png)

引入头文件，并遵守协议：
```
#import "NSObject+LDOptionalSingleton.h"

@interface Person : NSObject<LDOptionalSingleton>

@end
```
获取单例对象：
```
[Person LD_sharedSingleton];
```
如果使用了太多单例导致内存升高，可以手动释放：
```
[Person LD_freeSharedSingleton];
```

如果只是想获取一个全局的实例对象，可以遵守协议`<LDOptionalGlobalInstance>`，其他获取实例方法可以正常使用。
