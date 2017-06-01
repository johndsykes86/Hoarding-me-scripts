echo "Creating file directory..."
mkdir /home/plex /home/plex/tv-gd /home/plex/tv-r /home/plex/m-gd /home/plex/m-r /home/plex/a-gd /home/plex/a-r /home/plex/fuse-tv /home/plex/fuse-a /home/scripts /home/scripts/logs
echo "Creating mountchecks..."
touch /home/plex/tv-r/mountcheck /home/plex/m-r/mountcheck /home/plex/a-r/mountcheck
echo "Setting ownership of media folders..."
chown -R jsykes /home/plex/tv-r /home/plex/m-r /home/plex/m-r /home/plex/fuse-tv /home/plex/fuse-a
echo "All done!"
exit
