#!/bin/bash

echo "パスワードマネージャーへようこそ！"

read -p "サービス名を入力してください：" servisname
read -p "ユーザー名を入力してください：" useuname
read -p "パスワードを入力してください：" password

echo "$servisname:$username:$password" >> hokann.txt
echo "Thank you!"

