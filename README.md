# tome2 in Docker

Just a quick Docker setup to run [tome2](https://github.com/tome2/tome2).

1. Install Docker

2. ./build.sh

3. ./run.sh

The 'data' directory will be mounted as ~/.tome inside the container. Note that if your UID does not match that of the tome user in the container (probably 1000), you will need to change the ownership of that directory:

chown -R 1000:1000 data
