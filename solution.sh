#!/usr/bin/bash
sed "s|\/home\/sysop|${HOME}|" app.service
sudo cp app.service /etc/systemd/system
sudo systemctl start app.services