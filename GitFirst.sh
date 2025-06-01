git init
git add .
git config --global core.autocrlf true
git config --global user.email "bestsmileman@google.com"
git config --global user.name "bestsmileman"
git commit -m "초기 커밋"
git remote add origin https://github.com/bestsmileman/TimeInserter.git
git branch -M main
git push -u origin main