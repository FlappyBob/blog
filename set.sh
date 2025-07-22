# generate new post
# 不能有空格！
# name 
pname="断舍离"
hexo new post ${pname}

mkdir source/_posts/${pname}
mv source/_posts/${pname}.md source/_posts/${pname}/${pname}.md 

# flow: 
# 在post里生成同名文件夹，中间加入图片。 

# hexo new page academic