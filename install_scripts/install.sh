echo "First things first, lets get the file layout sorted!"

echo "Creating file directory..."
mkdir /home/plex /home/plex/tv-gd /home/plex/tv-r /home/plex/m-gd /home/plex/m-r /home/plex/a-gd /home/plex/a-r /home/plex/fuse-tv /home/plex/fuse-a /home/scripts /home/scripts/logs
echo "Creating mountchecks..."
touch /home/plex/tv-r/mountcheck /home/plex/m-r/mountcheck /home/plex/a-r/mountcheck
echo "Setting ownership of media folders..."
chown -R jsykes /home/plex/tv-r /home/plex/m-r /home/plex/m-r /home/plex/fuse-tv /home/plex/fuse-a
echo "All done!"


echo "Ok, now lets get all the dependencies installed"

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


echo "Finally, let's move the the scripts to the correct directory"

echo "this would be where we move the scripts but I dont know how to do that yet"
echo "First things first, lets get the file layout sorted!"
