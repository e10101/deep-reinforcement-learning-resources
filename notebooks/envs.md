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

### CarRacing-v1

Refs:
- https://medium.com/@kartha.kishan/solving-openai-carracing-v0-using-image-processing-5e1005ee0cb
    - Control car with image processing and PID.
- https://youtu.be/4Y7zG48uHRo
    - Youtube, Controlling Self Driving Cars, PID controllers.
- https://youtu.be/iv19T5s-oHc
    - Youtube Presentation, DQN with CNN + FCN, PPO, and FCN with Pre-Processing.
- https://towardsdatascience.com/applying-a-deep-q-network-for-openais-car-racing-game-a642daf58fc9
- https://stanford-cs221.github.io/autumn2019-extra/posters/25.pdf
    - A poster. PPO is better than DDPG and TD3.
- https://notanymike.github.io/Solving-CarRacing/
    - Modified the observation space (removed unused elements and change rgb to grayscale) and action spaces (continuous -> discretise)