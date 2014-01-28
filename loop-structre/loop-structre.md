# shell中的循环结构

## while循环

语法结构：
```
while 表达式
do
    命令表
done
```

'表达式'为循环控制条件，在每一次循环开始前都会被检查。

## for循环

所有能用for结构的循环都可以用while代替，但是如果需要通过一个列表来控制循环次数的话，使用for更加简洁，代码更紧凑。

for循环的语法结构：
```
for 变量 [ in 列表 ]
    do
        命令表
    done

```

如果省略[ in 列表 ]，则for会将当前脚本中的每个位置参数当作 列表，即‘for 变量’隐含表示为‘for 变量 $@’

程序示例：

1. multi.sh
读入一组数字，并计算这组数字的乘积

2. forNoIn.sh
缺省in列表，依次输出位置参数

## until循环

until是直到型循环，与while的区别在于，until在条件为假时继续执行，为真时停止。
也就是说until会一直执行循环，直到条件变成真才跳出。
until语法结构如下：
```
until
    命令表1
test 表达式
do
    命令表2
done
```

until具体循环步骤为：
首先执行‘命令表1’，并检测‘表达式’的值，若值为非0,则执行循环提‘命令表2’一次，
然后返回再次执行‘命令表1’，并再次检测‘表达式’的值。。。如此往复，直到表达式
的返回值为0，循环结束。

程序示例：
1. untilN.sh
对于输入的N值，计算从1～N的平方

## break语句

break用于结束while、for、until、select语句结构。
break + 数字 , 指明要跳出的结构的层数。
例程：
1. break.sh
根据输入的数字决定break在第几次循环退出。

2. twoBreak.sh
两层while循环，在外循环4次时break，在内循环3次时break

3. twoBreak2.sh
两层while循环，在内循环3次时直接break到外层循环

