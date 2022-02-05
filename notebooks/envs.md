# Environments

## List all Gym envs

```python
from gym import envs

for env in envs.registry.all():
    print(env)
```


## Tested Environments

| Name          | Action Space   | Tested               |
| ---           | ---            |----------------------|
| `CartPole-v0` | Discrete       | [DQN](./DQN.ipynb)   |
| `CartPole-v1` | Discrete       | [DQN](./DQN.ipynb)   |
| `Acrobot-v1`  | Discrete       | [DQN](./DQN.ipynb)   |
| `Pendulum-v1` | Continuous     | [DDPG](./DDPG.ipynb) |