# README

This README would normally document whatever steps are necessary to get the
application up and running.

Host changes:

run the below command in terminal

    1)  sudo nano /etc/hosts
    2) add the following line in host file
        127.0.0.1       test.filemanagement.com


Follow the steps to setup the application
1) Clone project from GIT
2) Bunlde Install
3) rake db:create
4) rake db:migarte
5) rails s
6) go to following url in browser
    http://test.filemanagement.com:3000/users/sign_in
7) Do sign up
8) click Add file link
9) Upload File
10) go to home page
11) edit, delete and download files.
12) For sharing file, i have created tinyurl link in the index page table.
