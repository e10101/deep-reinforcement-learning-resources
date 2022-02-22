# Environments

## List all Gym envs

```python
from gym import envs

for env in envs.registry.all():
    print(env)
```


## Tested Environments

| Name          | Action Space   | Tested                          |
| ---           | ---            |---------------------------------|
| `CartPole-v0` | Discrete       | [DQN](./DQN.ipynb)              |
| `CartPole-v1` | Discrete       | [DQN](./DQN.ipynb)              |
| `Acrobot-v1`  | Discrete       | [DQN](./DQN.ipynb)              |
| `Pendulum-v1` | Continuous     | [DDPG](./DDPG.ipynb)            |
| `Taxi-v3`     | Discrete       | [Taxi-v3](./envs/Taxi-v3.ipynb) |

### Taxi-v3

Refs:
- https://tiewkh.github.io/blog/deepqlearning-openaitaxi/
- https://ithelp.ithome.com.tw/articles/10235385
- https://www.learndatasci.com/tutorials/reinforcement-q-learning-scratch-python-openai-gym/
- https://medium.com/@anirbans17/reinforcement-learning-for-taxi-v2-edd7c5b76869
- https://apple.serpentine.ai/education/keras/taxi-q-learning