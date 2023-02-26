if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mrsns2503/SNS_PBOT /SNS_PBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SNS_PBOT
fi
cd /SNS_PBOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
