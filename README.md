#HUInputView---自定义数字键盘

---


###主要功能：自定义数字键盘，支持随机数字键盘。长按删除功能。

####技术点：

1.删除按钮，长按删除功能。

2.随机数字键盘

####解决方式：

1.删除键为UIbutton,长按删除原理：为此按钮添加长按手势，触动长按相关方法，开启定时器（UIGestureRecognizerStateBegan），循环进行删除操作！并在长按手势结束后，停止定时器（UIGestureRecognizerStateEnded）！

2.随机数字键盘原理：

```
- (NSMutableArray *) randomizedArrayWithArray:(NSArray *)array {
    
    NSMutableArray *results = [[NSMutableArray alloc]initWithArray:array];
    
    NSInteger i = [results count];
    
    while(--i > 0) {
        
        int j = rand() % (i+1);
        
        [results exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    
    return results;
    
}

```

####使用方法：

```
    UITextField *textF = [[UITextField alloc] initWithFrame:CGRectMake(10, 220, 300, 50)];
    textF.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:textF];
    textF.inputView.backgroundColor = [UIColor redColor];
    textF.inputView = [[HUNumInputView alloc] initIsRandom:NO mainView:textF];
```



