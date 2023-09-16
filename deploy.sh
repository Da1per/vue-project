

set -e

# сборка
npm run build

cd dist


git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/Da1per/vue_project.git master:gh-pages

cd -