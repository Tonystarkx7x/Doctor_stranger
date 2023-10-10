if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tonystarkx7x/Doctor_stranger
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Doctor_stranger
fi
cd /Doctor_stranger
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
