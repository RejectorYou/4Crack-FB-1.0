clear
echo ""
echo ""
echo "======================================"
echo "Instalasi Automatis Akan Dimulai"
echo "======================================"
echo "Enter untuk memulai"
read n
echo ""
echo ""
echo "install/update package"
echo "======================================"
pkg install --update
pkg install --upgrade -y
echo "======================================"
echo ""
echo ""
echo "install/update python2"
echo "======================================"
pkg install python2
pkg install python2 --upgrade
echo "======================================"
echo ""
echo ""
echo "install pip2 bs4"
echo "======================================"
pip2 install requests bs4
echo "======================================"
echo "INSTALASI SELESAI"
echo "======================================"
echo "Thank You, Untuk menjalankan script"
echo "python2 run.py"
echo "======================================"
echo ""
echo ""
