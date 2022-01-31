# deep-reinforcement-learning-resources

## Setup

### Prerequisites

You need installed following things:

- Docker (with Docker Compose)

### Run

Run following commands to turn on the docker-compose:

```shell
# This may take a few minutes to complete.
docker-compose up
```

Then, visit [http://localhost:18888](http://localhost:18888) 
(The local Jupyter Lab) with password `drl`.
If you want to change the default port (`18888`) or the default password
(`drl`), please change it in the `docker-compose.yaml` file.


## Notebooks

- [CartPole-v0](notebooks/CartPole-v0.ipynb)