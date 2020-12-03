#!/usr/bin/env sh

# ȷ���ű��׳������Ĵ���
set -e

# ���ɾ�̬�ļ�
npm run build

# �������ɵ��ļ���
cd docs/.vuepress/dist

# ����Ƿ������Զ�������
echo 'www.zhangyunchen.cc' > CNAME

git init
git add -A
git commit -m 'deploy'

# �������Ҫ���� https://<USERNAME>.github.io
git push -f git@github.com:zhangyunchencc/zhangyunchencc.github.io.git master

# ��������� https://<USERNAME>.github.io/<REPO>  REPO=github�ϵ���Ŀ
# git push -f git@github.com:<USERNAME>/vuepress.git master:gh-pages

cd -