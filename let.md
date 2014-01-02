# let命令
`let`   是用来进行算数运算的命令，语法为：
1. let 算数表达式
2. (( 算数表达式 ))
```
[singlepig]@[~]$ let x=2 y=2**3 z=y*3;echo $? $x $y $z
0 2 8 24
[singlepig]@[~]$ (( x=2,y=2**3,z=y*3 ));echo $? $x $y $z
0 2 8 24
[singlepig]@[~]$ (( w=(y/x) + ( (~ ++x) & 0x0f ) ));echo $? $x $y $w
0 4 8 13
```
