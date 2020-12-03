#!/usr/bin/env sh

# ȷ���ű��׳������Ĵ���
set -e

# ���ɾ�̬�ļ�
npm run build

# �������ɵ��ļ���
cd docs/.vuepress/dist

# ����Ƿ������Զ�������
echo 'www.songjie.网址' > CNAME

git init
git add -A
git commit -m 'deploy'

# �������Ҫ���� https://songjie1713.github.io
git push -f git@github.com:songjie1713/songjie1713.github.io.git master

# ��������� https://songjie1713.github.io/<REPO>  REPO=github�ϵ���Ŀ
# git push -f git@github.com:songjie1713/vuepress.git master:gh-pages

cd -