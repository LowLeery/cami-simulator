#renkler
tp="\e[0m"
blink="\e[5m"
kapalimavimsi="\e[0;36m"
kapalimavininacikolani="\e[96m"
acikyesil="\e[1;32m"
beyaz="\e[1;37m"
kirmizi="\e[1;31m"
sari="\e[1;33m"
mavi="\e[1;34m"
yesil="\e[0;32m"

#chafa yukleme
if [[ -f gerekli ]] ; then
    echo "Doğrulamalar yapıldı."
else
    ping -c 1 google.com > /dev/null
    if [[ "$?" != 0 ]]
    then
        clear
        echo -e "${beyaz}Internet kontrol ediliyor: ${kirmizi}BAGLANAMADI"
        sleep 0.5
        echo -e "${beyaz}Guncellemeleri gerceklestirmek için bir internet ağına bağlı olmalısınız."
        sleep 0.4
        exit 1
    else
        clear
        echo -e "${kapalimavininacikolani}Güncellemeler yapılıyor. (internet hızınıza göre değişebilir)${beyaz}"
        sleep 0.9
        sudo apt update
        clear
        echo -e "${kapalimavininacikolani}Gerekli paketler indiriliyor [2]. (internet hızınıza göre değişebilir)${beyaz}"
        sleep 1
        sudo apt install chafa
		touch gerekli 
        clear
        echo -e "${kapalimavininacikolani}Güncellemeler yapıldı."
        echo -e "${acikyesil}Yeniden başlatmana gerek yok. Komutları girerek başlıya bilirsin!"
        exit 1
    fi
fi

function komutkullan {
    echo -ne "${beyaz}↳[${blink}${kapalimavininacikolani}SJ${tp}]➢ " ; read option
}

trap ctrl_c INT
ctrl_c() {
clear
echo -e "${kirmizi}Baybay!"
echo -e "${kirmizi}Umarım eğlenmişsindir."
sleep 0.7
exit 0
}

clear
chafa camiresmi.jpeg
echo -e ""
echo -e "              ~~~~~~~~~~~~~~~~~~~~~ ${sari}Cami_Simulator ${beyaz}~~~~~~~~~~~~~~~~~~~~~~~~~              " 
echo ""
echo " [Y] ☯ Yumruk" 
echo " [T] ☯ Tekme" 
echo " [S] ☯ SMEKDAWN" 
echo ""
echo -ne "${kirmizi}Kendi bilgisayarınız ile dövüşmek için sayılardan herhangi birini seç\n${beyaz}↳[${blink}${kapalimavininacikolani}SJ${tp}]➢ " ; read option

function oc {
    case "$option" in
        y)
            clear
            echo -e "${yesil}$USER: ${beyaz}AAAA KAFAMA GELDI"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            komutkullan
        ;;
        Y)
            clear
            echo -e "${yesil}$USER: ${beyaz}AAAA KAFAMA GELDI"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            komutkullan
        ;;
        t)
            clear
            echo -e "${yesil}$USER: ${beyaz}taşaklara vurma len"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            komutkullan
        ;;
        T)
            clear
            echo -e "${yesil}$USER: ${beyaz}taşaklara vurma len"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            komutkullan
        ;;
        s)
            clear
            echo -e "${yesil}$USER: ${beyaz}CAMİDE SMEKDAWN ÇEKTİM HAWLİ OLDUM AMA CİDDEN HAWLİ"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}99931"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            komutkullan
        ;;
        S)
            clear
            echo -e "${yesil}$USER: ${beyaz}CAMİDE SMEKDAWN ÇEKTİM HAWLİ OLDUM AMA CİDDEN HAWLİ"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}99931"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            komutkullan
        ;;
    esac
}

while :; do
  oc # OL ARTIK OROSPU EVLADI
done