# Add source
echo deb http://ftp.de.debian.org/debian stretch-backports main >> /etc/apt/sources.list
apt-get update

# Install basic Tesseract packages
apt-get install -y tesseract-ocr-eng=4.00~git28-f7a4c12-1~bpo9+1
apt-get install -y tesseract-ocr-osd=4.00~git28-f7a4c12-1~bpo9+1
apt-get install -y tesseract-ocr=4.00~git2439-c3ed6f03-1~bpo9+1

# Set up Tesseract language data files
git clone git://github.com/tesseract-ocr/tessdata.git
cd tessdata/
git checkout 4.00
rm -rf .git
mv ./* /usr/share/tesseract-ocr/4.00/tessdata/
cd ..
rm -rf tessdata/
