pacman -S --noconfirm cronie
systemctl start cronie
systemctl enable cronie
cp ./skript.sh /etc
chmod 777 /etc/skript.sh
echo "*/3 * * * * bash -c /etc/skript.sh" > /var/spool/cron/root
