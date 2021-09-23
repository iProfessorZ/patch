#/bin/bash

TIME() {
[[ -z "$1" ]] && {
	echo -ne " "
} || {
     case $1 in
	r) export Color="\e[31;1m";;
	g) export Color="\e[32;1m";;
	b) export Color="\e[34;1m";;
	y) export Color="\e[33;0m";;
	z) export Color="\e[35;1m";;
	l) export Color="\e[36;1m";;
      esac
	[[ $# -lt 2 ]] && echo -e "\e[36m\e[0m ${1}" || {
		echo -e "\e[36m\e[0m ${Color}${2}\e[0m"
	 }
      }
}

	while :; do
	TIME g "---------------------------------------------------"
	TIME g "[1] 更新至 2021.09.21 编译的 R21.9.18 5.4.145 版本"
	echo
	TIME g "[2] 更新至 2021.09.21 编译的 R21.9.18 5.14.6 版本"
	echo
	TIME g "[0] 说啥也不好使了 我要继续做钉子户 退出放弃本次更新"
	TIME g "---------------------------------------------------"
	read -p " 请输入您的选择 然后 敲回车 确认： " CHOOSE
	case $CHOOSE in
	1)
	echo
	TIME y "[1] 更新至 2021.09.21 编译的 R21.9.18 5.4.145 版本"
        bash <(curl -s -S -L https://git.io/phicomm_n1_5.4.y.sh)
	break
	;;
	2)
	echo
	TIME y "[2] 更新至 2021.09.21 编译的 R21.9.18 5.14.6 版本"
        bash <(curl -s -S -L https://git.io/phicomm_n1_5.4.y.sh)
	break
	;;
	0)
	echo
	TIME r "您选择了 [0] 继续做 坚强的 钉子户 放弃本次更新 再见！"
	exit 0
	break
    	;;
    	*)
	echo
	TIME r "警告：输入错误,请输入正确的编号!"
	;;
	esac
	done
}
echo