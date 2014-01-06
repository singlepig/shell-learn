复合命令“[[ ]]”
可以对文件名和字符串使用更自然的语法，其中的特殊字符串不用转义。  
在“[[ ]]”中，允许使用括号和逻辑操作符“&&”和“||”把test命令支持的测试组合起来。  
例如：  
```
[singlepig]@[~]$ [[ ( -d "$HOME" ) && ( -w "$HOME" ) ]] && echo "home is a
writable directory."
home is a writable directory.
```
在使用`=`或者`！=`操作符时，`[[ ]]`还能在字符串上进行模式匹配。  
例如：
```
[singlepig]@[~]$ [[ "abc def .d,x--" == a[abc]*\ ?d* ]]; echo $?
0
[singlepig]@[~]$ [[ "abc def c" == a[abc]*\ ?d* ]]; echo $?
1
[singlepig]@[~]$ [[ "abc def d,x" == a[abc]*\ ?d* ]]; echo $?
1
```
