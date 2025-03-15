# generate new post
# 不能有空格！

# name 
pname="随机性和自由意志"
hexo new post ${pname}

mkdir /home/flappy/my-blog/source/_posts/${pname}
mv /home/flappy/my-blog/source/_posts/${pname}.md /home/flappy/my-blog/source/_posts/${pname}/${pname}.md 

# flow: 
# 在post里生成同名文件夹，中间加入图片。 

# hexo new page academic