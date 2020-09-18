URL=https://www.dropbox.com/s/g9bg011ky7kp1mg/artfacts_exhibitons.zip?dl=0
ZIP_FILE=./data/artist_exhibition.zip
mkdir -p ./data/
sudo apt-get install unzip
wget -N $URL -O $ZIP_FILE
unzip $ZIP_FILE -d ./data/
rm $ZIP_FILE