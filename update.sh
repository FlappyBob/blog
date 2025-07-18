cd themes/cactus
git add . 
git commit -m "aaa"
git push 

cd /mnt/c/Users/flapp/prog/blog
git submodule update --remote
hexo clean
hexo generate
git add . 
git commit -m "aaa"
git push origin