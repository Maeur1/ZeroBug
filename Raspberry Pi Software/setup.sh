sudo apt install pip git curl libsdl2-mixer-2.0-0 libsdl2-image-2.0-0 libsdl2-2.0-0 cmake libjpeg9-dev
pip install -r requirements.txt
sudo cp app.service /etc/systemd/system/app.service
sudo cp stream.service /etc/systemd/system/stream.service
sudo systemctl daemon-reload
sudo systemctl enable stream.service
sudo systemctl enable app.service
sudo systemctl start app.service
sudo systemctl start stream.service
