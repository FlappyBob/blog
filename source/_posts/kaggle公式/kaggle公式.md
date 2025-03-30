---
title: ml/dl丹方 + （更新。。）
date: 2025-03-30 12:16:38
tags:
---

*我认为对dl这个东西，每人都有自己的职责：scientist实验这些框架能否解决新的问题；engineer搭建快速框架/硬件；data scientist套现有的公式炼丹解决问题；*

*上dl课每次学完玄乎的丹方总是想着自己实践一下，最后总是发现其实没啥可实践的，除了一些infra的东西（框架/infra for ml）engineer可以做做；给data scientist留下的工程实践不难，但是却需要对问题有深刻的理解，套正确的公式，kaggle是一个很好的训练这个的平台，遂写博客总结一下pipeline和常用的框架，省的之后思考*

## 炼丹童子的自我修养

### 1. data
1. 下data不多说

2. 检视：心里对data有个idea

导库  
``` py
import numpy as np
import pandas as pd # 表格数据用这个
import matplotlib.pyplot as plt # cv用这个
import os # 一般常用

path = # ... 
os.listdir(path)
pd.ji

pd.read_csv(os.path.join(digit_recognizer_path, 'train.csv')).head()
 ```

## 丹方（常用的框架nn；pytorch）
Regression: nn.Linear
ex: https://www.kaggle.com/competitions/titanic

Classification: (nn.Linear + sigmoid) *n + softmax
ex: 经典的mnist https://www.kaggle.com/competitions/digit-recognizer

