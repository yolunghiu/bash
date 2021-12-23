# bash notes

## Introduction

1. 查看当前运行的Shell: `echo $SHELL`
2. 查看当前的 Linux 系统安装的所有 Shell: `cat /etc/shells`

## echo

1. 输出多行文本,将文本放到双引号里
2. `-n`取消回车符: `echo -n hello world`
3. `-e`参数会解释引号（双引号和单引号）里面的特殊字符: `echo -e "Hello\nWorld"`

## 命令、空格、分号、&&和||

1. 在每一行的结尾加上反斜杠,Bash 就会将下一行跟当前行放在一起解释
2. 如果参数之间有多个空格,Bash 会自动忽略多余的空格
3. 分号（;）是命令的结束符,使得一行可以放置多个命令
4. 使用分号时,第二个命令总是接着第一个命令执行,不管第一个命令执行成功或失败
5. `Command1 && Command2`: 如果Command1命令运行成功，则继续运行Command2命令
6. `Command1 || Command2`: 如果Command1命令运行失败，则继续运行Command2命令

## {}扩展示例

1. 创建一系列文件夹: `mkdir {2007..2009}-{01..12}`
2. 直接用于for循环
    ```
    for i in {1..4}
    do
        echo $i
    done
    ```
   
## ()子命令扩展

- `$(...)`可以扩展成另一个命令的运行结果，该命令的所有输出都会作为返回值
    - `echo $(date)`
- `$(...)`可以嵌套，比如`$(ls $(pwd))`