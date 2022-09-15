A simpe map tool to generate maps and scenarios for tabletop miniature wargames.

![Alt text](/img/01.png?raw=true "Screenshot")

To run the program:

Firstmake .zip file of the entire contents of this repository.
rename .zip file to .love

## 1) Use the mapgenerator localy

Install Love2d.
Double click on the .love file.

2) To transpile into javascript for deployment:

https://kalis.me/building-love2d-games-web-docker/

make zip file of the entire contents of repository.
rename .zip file to .love

```
npx love.js mapGenerator.love ./dist/mapGeneratorJS -c
```
```
cd /dist/mapGeneratorJS
```
Create simple python web server to test locally.
```
simpleHttpServer 3000
```
Go to localhost:3000 in your browser to use the map generator.

If it works deploy to heroku or wherever you choose.