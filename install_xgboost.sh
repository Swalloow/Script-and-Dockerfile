git clone --recursive https://github.com/dmlc/xgboost
cd xgboost
sudo cp make/minimum.mk ./config.mk;
sudo make -j4;
sh build.sh
cd python-package
python setup.py install
