generate new post

# 不能有空格！
pname="3rd_yr_fall"
postdir=./source/_posts

hexo new post ${pname}

mkdir ${postdir}/${pname}
mv ${postdir}/${pname}.md ${postdir}/${pname}/${pname}.md


# hexo new page archives
# hexo new page tags
# hexo new page links