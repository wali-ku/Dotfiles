R='\033[0;31m'
G='\033[0;32m'
Y='\033[0;33m'
C='\033[0;36m'
N='\033[0m'

if [ "`whoami`" != "root" ]; then
	echo -e "${R}[ERROR] Only root can run this script!${N}"
	return
fi

packages=("vim" "tmux" "tree" "htop" "nmon" "trace-cmd" "kernelshark" "cscope"
"ctags" "make" "xclip" "libncurses5-dev")

echo -e "${G}Updating APT...${N}"
apt update

for p in ${packages[@]}; do
	echo
	echo -e "${G}[STATUS] Installing: ${p}${N}"
	apt install -y ${p}
done

echo
echo -e "${Y}[STATUS] Installation complete!${N}"
