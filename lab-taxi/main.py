import gym
import numpy as np
from agent import Agent
from monitor import interact

env = gym.make("Taxi-v2")
agent = Agent()
avg_rewards, best_avg_reward = interact(env, agent)
