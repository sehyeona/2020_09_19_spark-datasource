URL=https://www.dropbox.com/s/ou74oopp8hs9se7/exhibition%2Cnations.zip?dl=0
ZIP_FILE=./data/artist_exhibition.zip
mkdir -p ./data/
sudo apt-get install unzip
wget -N $URL -O $ZIP_FILE
unzip $ZIP_FILE -d ./data/
rm $ZIP_FILE
