# strace Docker

This all comes from [this blog post](https://medium.com/@rothgar/how-to-debug-a-running-docker-container-from-a-separate-container-983f11740dc6#.aferym5ba).

User the `strace` container using the same `pid` and `net` than the target.

To `strace` a container named `web`:

    $ docker run -t --pid=container:web --net=container:web --cap-add sys_admin --cap-add sys_ptrace strace

Or also simply launch an Alpine shell:

    $ docker run -it --pid=container:web --net=container:web --cap-add sys_admin alpine sh
