# TextViewChangeHeight项目需要，要求textview的高度随着输入内容的多少动态的改变高度，这个demo借鉴的网上的博客，博客原地址是:http://www.cnblogs.com/xiaofeixiang。
我根据博客中的代码运行后，发现当我输入内容的时候高度会增高，但是当我删除内容后发现textview的高度并没有降低，观察代码后将textview的代理方法中

    if (size.height<=frame.size.height) {
        size.height=frame.size.height;
    }
 改成
 
     if (size.height<=frame.size.height) {
        size.height=size.height;
     }
    
 问题解决
