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
echo -e "                ~~~~~~~~~~~~~~~~~~~~~ ${sari}cami_simulator ${beyaz}~~~~~~~~~~~~~~~~~~~~~              " 
echo ""
if [[ -f abdestalindi ]] ; then
echo " [Y] ☯ Yumruk" 
echo " [T] ☯ Tekme" 
echo " [S] ☯ SMEKDAWN" 
else
echo " [Y] ☯ Yumruk" 
echo " [T] ☯ Tekme" 
echo " [S] ☯ SMEKDAWN" 
echo " [A] ☯ QUICK ABDEST" 
fi
echo ""
echo -ne "${kirmizi}Kendi bilgisayarınız ile dövüşmek için sayılardan herhangi birini seç\n${beyaz}↳[${blink}${kapalimavininacikolani}SJ${tp}]➢ " ; read option

function oc {
    case "$option" in
        y)
            clear
            if [[ -f abdestalindi ]] ; then
            rm abdestalindi
            echo -e "${yesil}$USER: ${beyaz}Ahmet yardım et"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            else 
            echo -e "${yesil}$USER: ${beyaz}AAAA KAFAMA GELDI"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            echo " [A] ☯ QUICK ABDEST"
            fi
            komutkullan
        ;;
        Y)
            clear
            if [[ -f abdestalindi ]] ; then
            rm abdestalindi
            echo -e "${yesil}$USER: ${beyaz}Ne gülüyon lan???"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            else 
            echo -e "${sari}$USER: ${beyaz}HOCAM GAFAMA VURUYO"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            echo " [A] ☯ QUICK ABDEST"
            fi
            komutkullan
        ;;
        t)
            clear
            if [[ -f abdestalindi ]] ; then
            rm abdestalindi
            echo -e "${yesil}$USER: ${beyaz}Ayağın kokuyo lan"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            else 
            echo -e "${kirmizi}$USER: ${beyaz}UÇANNNN TEKMEEEE"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            echo " [A] ☯ QUICK ABDEST"
            fi
            komutkullan
        ;;
        T)
            clear
            if [[ -f abdestalindi ]] ; then
            rm abdestalindi
            echo -e "${yesil}$USER: ${beyaz}Ayağın kokuyo lan"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            else 
            echo -e "${yesil}$USER: ${beyaz}UÇANNNN TEKMEEEE (ayağını kırdın)"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}$RANDOM"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            echo " [A] ☯ QUICK ABDEST"
            fi
            komutkullan
        ;;
        s)
            clear
            if [[ -f abdestalindi ]] ; then
            rm abdestalindi
            echo -e "${yesil}$USER: ${beyaz}BASH cidden güçlüymüş (öldü)"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}99999"${tp}
            echo ""
            exit 1
            else 
            echo -e "${yesil}$USER: ${beyaz}Üstümden kalk lan!"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}99999"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            echo " [A] ☯ QUICK ABDEST"
            fi
            komutkullan
        ;;
        S)
            clear
            if [[ -f abdestalindi ]] ; then
            rm abdestalindi
            echo -e "${yesil}$USER: ${beyaz}la ibo nerdesin"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}99999"${tp}
            echo ""
            exit 1
            else 
            echo -e "${yesil}$USER: ${beyaz}BIRAK LAN KOLUMU"
            echo -e "${kirmizi}Vuruş gücü: ${beyaz}${blink}99999"${tp}
            echo ""
            echo " [Y] ☯ Yumruk" 
            echo " [T] ☯ Tekme" 
            echo " [S] ☯ SMEKDAWN" 
            echo " [A] ☯ QUICK ABDEST"
            fi
            komutkullan
        ;;
        a)
            clear
            echo -e "${beyaz}3 Kere ağıza."
            sleep 0.6
            if [[ -f abdestalindi ]] ; then
                clear
                echo -e "${kirmizi}Zaten abdest almışsın dostum?" ${beyaz}
                echo ""
                echo " [Y] ☯ Yumruk" 
                echo " [T] ☯ Tekme" 
                echo " [S] ☯ SMEKDAWN" 
                komutkullan
            else
                echo -e "${beyaz}3 Kere buruna (sümkür)."
                sleep 1.2
                echo -e "${beyaz}3 Kere yüzüne su çarp."
                sleep 1.5
                echo -e "${beyaz}3 Kere kollarını dirseğe kadar yıka."
                sleep 2
                echo -e "${beyaz}Başını mest et."
                sleep 0.6
                echo -e "${beyaz}Kulaklarını serçe parmağın ile 3 kere temizle. (ben böle biliyom aga)"
                sleep 1
                echo -e "${beyaz}3 Kere ayaklarını yıka."
                sleep 3
                echo -e "${beyaz}Heh ya amca oğlu böyle güzelce al abdestini işte 10 saniye beklede kurulan biraz."
                touch abdestalindi
                sleep 10
                clear
                echo -e "${sari}Abdest aldın." ${beyaz}
                echo ""
                echo " [Y] ☯ Yumruk" 
                echo " [T] ☯ Tekme" 
                echo " [S] ☯ SMEKDAWN" 
                komutkullan
            fi
        ;;
        A)
            clear
            echo -e "${beyaz}3 Kere ağıza."
            sleep 0.6
            if [[ -f abdestalindi ]] ; then
                clear
                echo -e "${kirmizi}Zaten abdest almışsın dostum?" ${beyaz}
                echo ""
                echo " [Y] ☯ Yumruk" 
                echo " [T] ☯ Tekme" 
                echo " [S] ☯ SMEKDAWN" 
                komutkullan
            else
                echo -e "${beyaz}3 Kere buruna (sümkür)."
                sleep 1.2
                echo -e "${beyaz}3 Kere yüzüne su çarp."
                sleep 1.5
                echo -e "${beyaz}3 Kere kollarını dirseğe kadar yıka."
                sleep 2
                echo -e "${beyaz}Başını mest et."
                sleep 0.6
                echo -e "${beyaz}Kulaklarını serçe parmağın ile 3 kere temizle. (ben böle biliyom aga)"
                sleep 1
                echo -e "${beyaz}3 Kere ayaklarını yıka."
                sleep 3
                echo -e "${beyaz}Heh ya amca oğlu böyle güzelce al abdestini işte 10 saniye beklede kurulan biraz."
                touch abdestalindi
                sleep 10
                clear
                echo -e "${sari}Abdest aldın." ${beyaz}
                echo ""
                echo " [Y] ☯ Yumruk" 
                echo " [T] ☯ Tekme" 
                echo " [S] ☯ SMEKDAWN" 
                komutkullan
            fi
        ;;
    esac
}

while :; do
  oc
done
