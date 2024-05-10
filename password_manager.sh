#!/bin/bash


echo "パスワードマネージャーへようこそ！"
while $condition="Exit"; 
do
 echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
 read conditions
 case $condition in
     "Add Password") 
           read -p "サービス名を入力してください： " service_name
           read -p "ユーザー名を入力してください： " username
           read -p "パスワードを入力してください： " password

           echo "$service_name:$username:$password" >> passwords.txt

           echo "パスワードの追加は成功しました。";;

　　"Get Password")
　　　　　echo "サービス名を入力してください："
          read service_name

          passwordtxt=$(grep "^$service_name:" passwords.txt)

         if [ -z "$passwordtxt" }
         then 
              echo "そのサービスは登録されていません。"
         else
              usernames=$(echo "passwordtxt" cut -d ":" -f 2 )
              passwords=$(echo "passwordtxt" cut -d ":" -f 3 )

             echo "サービス名: $passwordtxt"
             echo "ユーザー名: $usernames"
             echo "パスワード: $passwords"
         fi;

           "Exit")
             echo "Thank you!"; break;;

           *)
             echo "入力が間違えています。"
 esac
done
