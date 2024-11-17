cd themes/cactus
git add . 
git commit -m "aaa"
git push 

cd /home/flappy/my-blog/
git submodule update --remote
hexo clean
hexo generate
git add . 
git commit -m "aaa"
git push upstream