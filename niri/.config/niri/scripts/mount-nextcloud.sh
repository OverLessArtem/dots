#!/bin/sh
sleep 5

rclone mount nextcloud: ~/home_server --vfs-cache-mode writes --daemon
