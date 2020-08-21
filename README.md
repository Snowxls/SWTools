- UIColor

```
/**
 16进制ARGB转UIColor
 @param argb 16进制ARGB
 */
- (UIColor*) initWithARGB:(unsigned long)argb;

/**
 16进制RGB转UIColor
 @param rgb 16进制ARGB
 */
- (UIColor*) initWithRGB:(unsigned long)rgb;

/**
 16进制ARGB转UIColor
 @param argb 16进制ARGB
 */
+ (UIColor*) colorWithARGB:(unsigned long)argb;

/**
 16进制RGB转UIColor
 @param rgb 16进制ARGB
 */
+ (UIColor*) colorWithRGB:(unsigned long)rgb;

/**
色号文本转UIColor
@param stringToConvert 色号文本 ARGB
*/
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

```

- UILabel

```
/**
 *  获取单行Size
 */
- (CGSize)fixSingleTextSize;

/**
 *  获取多行Size
 */
- (CGSize)fixMutableTextSize;
```

- UIImageView

```
//圆角度数
@property (nonatomic, assign) CGFloat SWRadius;
```

- UI相关

```
/**
 设置基础配率宽高 默认宽高 2045*1536
*/
- (void)SW_SetBaseWidth:(CGFloat)width baseHeight:(CGFloat)height;

/**
 配率比获取宽
 */
- (CGFloat)SW_UIWidthBy:(CGFloat)width;

/**
 配率比获取高
 */
- (CGFloat)SW_UIHeightBy:(CGFloat)height;

/**
 * 显示内容区域
 * iOS<7.0为除了status bar和navigation bar以外的区域,iOS>=7.0为整个屏幕
 */
@property (nonatomic, readonly) CGRect frameForDisplayContent;

/**
 * 最大显示内容区域
 * iOS<7.0为除了status bar以外的区域,iOS>=7.0为整个屏幕
 */
@property (nonatomic, readonly) CGRect frameForMaxDisplayContent;

/**
 * 除了status bar以外的区域
 */
@property (nonatomic, readonly) CGRect frameUnderStatusBar;

/**
 * 除了status bar和navigation bar以外的区域
 */
@property (nonatomic, readonly) CGRect frameUnderNavigationBar;

/**
 * 整个屏幕区域
 */
@property (nonatomic, readonly) CGRect fullFrame;

/**
 * 在iOS8之前，当设备朝向发生改变时，控件坐标系会自动调整到相对于该朝向的坐标系。
 * 永远以用户站立时，右手方向为x轴和屏幕宽度的方向，垂直向下为y轴和屏幕高度的方向。
 * 故在代码中使用UITouch的locationInView:nil风险很大，因为没有自适应，而locationInView:self.view则会跟view一样自动调整坐标系。
 * 这边处理一下bounds
 */
@property (nonatomic, readonly) CGRect boundsByOrientation;
@property (nonatomic, readonly) CGRect boundsInPixels;

/**
 * 根据缩放获取相对宽度
 */
- (CGFloat) widthByScale:(CGFloat)scale;

/**
 * 根据缩放获取相对高度
 */
- (CGFloat) heightByScale:(CGFloat)scale;

/**
 * 普通点坐标转相对点坐标
 */
- (CGPoint) pointInPixelsByPoint:(CGPoint)point;

/**
 * 相对点坐标转普通点坐标
 */
- (CGPoint) pointByPointInPixels:(CGPoint)pointInPixels;

/**
 * 获取相对宽度,若输入宽度在(-1,1)中则视为百分比,否则原值返回
 */
- (CGFloat) getRelativeWidth:(CGFloat)width;

/**
 * 获取相对高度,若输入高度在(-1,1)中则视为百分比,否则原值返回
 */
- (CGFloat) getRelativeHeight:(CGFloat)height;
```

- Json转换

```
/**
 Json转String
 */
+ (NSString *)convertToJsonData:(id)dict;

/**
 Json转字典 正常规格JsonString
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;

/**
 Json转数组
 */
+ (NSArray *)arrayWithJsonString:(NSString *)jsonString;

/**
 字典转JsonData
 @param dic 字典模型
 */
+ (NSData *)getDataWithDictionary:(NSDictionary *)dic;

/**
 数组转JsonData
 @param arr 数组模型
 */
+ (NSData *)getDataWithArray:(NSArray *)arr;

/**
 set转JsonData
 @param set 数组模型
 */
+ (NSData *)getDataWithSet:(NSSet *)set;
```

- MD5

```
/**
 获取路径文件md5值
 @param path 文件路径
 */
+ (NSString *)getFileMD5WithPath:(NSString *)path;

/**
 获取输入的md5值
 @param input 输入内容
 */
+ (NSString *)md5:(NSString *)input;
```

- URL

```
/**
 *  URLEncode
 */
- (NSString *)URLEncodedString;

/**
 *  URLDecode
 */
-(NSString *)URLDecodedString;
```