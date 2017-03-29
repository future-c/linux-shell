#!/bin/bash

echo "hello world";
echo "shell脚本文件开头是 #!/bin/bash ,表示该脚本使用 /bin/bash 这个解释器来执行";
echo "命令文件(.sh)可以将其作为命令行参数,另一种是给其设置可执行权限,将其变成可执行文件";
echo "参数形式: bash xxx.sh 或者 sh xxx.sh";
echo "可执行形式: chmod a+x xxx.sh 然后 ./script.sh 执行, 注意前面的 ./ 不能没有,这样系统内核会直接识别文件首行的 shebang(#!/bin/bash), 并调用 /bin/bash来解释执行";

echo "注意: 查看权限的时候: -rwxr--r-- ,一般横线总共是10根,也就是10位, 第一根线如果有值(一般都是d),那么就显示d而不显示横线,第一条横线表示当前目标是
文件还是目录, d表示目录,横线就是没值,就是文件,后面的都是三位一组,分别表示: 当前用户的权限,当前用户的组里的用户的权限, 其他用户的权限, 
每一组的三条线分别对应  读\写\执行,即 rwx";

#使用 echo 打印彩色
echo -e "你好是我 \033[1;31m future \033[0m ,我来自贵州!";


for STYLE in 0 1 2 3 4 5 6 7; do
  for FG in 30 31 32 33 34 35 36 37; do
    for BG in 40 41 42 43 44 45 46 47; do
      CTRL="\033[${STYLE};${FG};${BG}m"
      echo -en "${CTRL}"
      echo -n "${STYLE};${FG};${BG}"
      echo -en "\033[0m"
    done
    echo
  done
  echo
done
# Reset
echo -e "\033[0m"

# 下面使用printf打印
printf "%-5s %-20s %-4s\n" No Name Mark
