# kivy buildozer docker
## Usage:
* You need Docker installed: https://docs.docker.com/install/
* Clone this repository and build the image (it'll take a while):
```
# docker build -t kivy_buildozer .
```
* Go to your project folder and start the container:
```
# docker run --rm -it -v $(PWD):/home kivy_buildozer
```
* Explanation:
  - `--rm` - remove container after run
  - `-v $PWD:/home ` - mount current directory as `/home` in container
  - `kivy_buildozer` - image name
  - If don't have a `buildozer.spec` file already, run `init` inside the container:
```
$ buildozer init
```
- To build the apk (run inside the container):
```
$ buildozer android debug
```
