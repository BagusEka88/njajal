 zlucifer / light_bringer
Code  Issues 0  Pull requests 0  Projects 0  Wiki  Pulse  Community
light.sh

#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////                       _            _  __                              ////
#////                      | |          (_)/ _|                             ////
#////                   ___| |_   _  ___ _| |_ ___ _ __                     ////
#////                  |_  / | | | |/ __| |  _/ _ \ '__|                    ////
#////                   / /| | |_| | (__| | ||  __/ |                       ////
#////                  /___|_|\__,_|\___|_|_| \___|_|                       ////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
echo Selamat datang kak, Siapa nick kaka? #tulisan keluar
read nick #membaca yang ditulis
echo "             . "
sleep 0.03
echo "         .   :   .  "
sleep 0.03
echo "     '.   .  :  .   .' "
sleep 0.03
echo "  ._   '._.-'''-._.'   _. "
sleep 0.03
echo "    '-..'         '..-'  "
sleep 0.03
echo " --._ /.==.     .==.\ _.-- "
sleep 0.03
echo "     ;/_o__\   /_o__\; "
sleep 0.03
echo "-----|'     ) (     '|-----"
sleep 0.03
echo "    _: \_) (\_/) (_/ ;_ "
sleep 0.03
echo " --'  \  '._.=._.'  /  '-- "
sleep 0.03
echo "   _.-''.  '._.'  .''-._ "
sleep 0.03
echo "  '    .''-.(_).-''.    ' "
sleep 0.03
echo "     .'   '  :  '   '. "
sleep 0.03
echo "        '    :   ' "
sleep 0.03
echo "             ' "
sleep 0.03
echo "==============================="
sleep 2
echo " Tools Dark Angel By ='Mr'=Good++ "
sleep 0.7
echo "==============================="
echo " Welcome To Comfort Zone"

echo Selamat datang $nick ":)"
get_url=$(curl -s http://zlucifer.com/api/nik.php)
cek='curl -s '$get_url # check status
response=`curl -s -o /dev/null -w "%{http_code}" $cek`
if [[ $response != *HACKER* ]]; then
    echo
    echo "Website Offline/Restart untuk sementara"
    echo "Silahkan coba lagi"
else
    echo
    echo "Masukan angka 1 untuk tips, dan 2 untuk melakukan pengecekan"
    echo " 1.Tips"
    echo " 2.Cek"
    echo "1/2?"
    read info
    if [ $info = "1" ]; then
        echo "TIPS: "
        echo " Minta nomor rekening (Atas Nama) dan "
        echo " NIK penjual untuk di cek keasliannya"
        echo
        echo " Penjual tidak mau memberi NIK = Waspada"
        echo " Nama pemilik NIK tidak muncul = Waspada"
        echo " Nama pemilik NIK dan Nama pemilik rekening berbeda = Waspada"
        echo " Nama pemilik NIK sama dengan Nama pemilik rekening = Penjual asli"
        echo " Meskipun penjual asli, tetap waspada"
     else
            echo
            echo "Silahkan masukan NIK target"
            echo " Contoh 1234567890876543"
            echo "Nulis nya yang teliti"
            read target # masukin NIK
            echo
            echo Apakah NIK $target "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                echo Melakukan Pengecekan NIK $target
                cek_target=`curl -s $get_url/nik.php?nik=$target`
                echo -e $cek_target
            else
                echo Kesalahan, silahkan coba lagi
            fi
     fi
fi
echo
echo "==================================="
echo " Tools ini gratis"
echo " Spesial Tool Dari MrGood Admin:BEV"
echo " Dilarang menjual belikan tools ini"
echo " Dilarang menyalahgunakan tools ini :)"
echo "==================================="
 Desktop version Sign out
