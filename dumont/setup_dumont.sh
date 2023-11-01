#dumont用のセットアップファイル

#!/bin/bash

# 1. pyenvのインストール
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# 2. パスの追加
cat ../bashrc >> ~/.bashrc

# 3. 変更の適用
source ~/.bashrc

# 4. Pythonのインストール
pyenv install 3.11.4

# 5. 環境変数の設定
pyenv global 3.11.4

# 6. pipのアップグレード
pip install --upgrade pip

# 7. jupyternotebookをpipを使ってイントール
pip install notebook

# 8. 設定ファイルの生成
jupyter notebook --generate-config

# 9. 設定ファイルの編集
sed -i "s/# c.ServerApp.ip = 'localhost'/c.ServerApp.ip = '*'/" ~/.jupyter/jupyter_notebook_config.py

# 10. jupyter-notebookの実行
jupyter notebook --ip 10.133.0.61
