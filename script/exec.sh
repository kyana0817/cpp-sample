docker run -u $(id -u):$(id -g) \
    -v .:/workdir \
    -v build:/workdir/build \
    -h cpp-sample \
    --name cpp-sample \
    -it playground:cpp-sample
