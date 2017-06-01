echo "Installing Rclone"
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64

echo "Copying rclone files to binary"
sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755

echo "Installing manpage"
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb

echo "Installing PlexDrive"
wget https://github.com/dweidenfeld/plexdrive/releases/download/3.0.0/plexdrive-linux-amd64
mv plexdrive-linux-amd64 /usr/local/bin/plexdrive
chown root:root /usr/local/bin/plexdrive
chmod 755 /usr/local/bin/plexdrive
exit
