sudo apt update
sudo apt upgrade
sudo apt install fish
# fishのインストール場所を確認する
which fish
chsh -s <path/to/fish>
# ここで端末を終了し，再び立ち上げる
## 追加でいろいろとインストールする
sudo apt install aptitude
sudo apt install g++ 
sudo apt install wget
sudo apt install unzip
sudo apt install tmux
sudo apt install cmake
sudo apt install time
sudo apt install git
sudo apt install curl
sudo apt install libcurl4-openssl-dev
sudo apt install libzmq3-dev
sudo apt-get install libeigen3-dev
sudo apt install libyaml-cpp-dev
sudo apt install libncurses5-dev
sudo apt install libncursesw5-dev
sudo apt install python3-dev python3-pip python3-venv
python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
## Install OpenCV
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip
mkdir -p build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D WITH_TBB=ON \
      -D BUILD_NEW_PYTHON_SUPPORT=ON \
      -D WITH_V4L=ON \
      -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D BUILD_EXAMPLES=ON \
      -D WITH_QT=ON \
      -D WITH_GTK=ON \
      -D WITH_OPENGL=ON \
      ../opencv-4.x
make
sudo make install
## Test OpenCV
wget https://github.com/irlab-INOUE/OpenCVsamples/archive/refs/heads/master.zip
unzip OpenCVsamples-master.zip
cd OpenCVsamples-master
cd firstSamples
cd windowOpen
mkdir build
cd build
cmake ..
make
./windowOpen
# 緑色の四角の画像が表示されたら成功
## 北陽電気ライブラリ(2D-LIDAR)
wget https://sourceforge.net/projects/urgnetwork/files/urg_library/urg_library_ja-1.2.5.zip
unzip urg_library_ja-1.2.5.zip
cd urg_library_ja-1.2.5
make
sudo make install
## tmuxの環境設定
## Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
## gnuplot
sudo apt install gnuplot
# 動作確認
gnuplot
## gnuplotのプロンプトが表示される
plot sin(x)
## sinのグラフが表示されたら成功
## gnuplotプロンプトで`q`終了する

