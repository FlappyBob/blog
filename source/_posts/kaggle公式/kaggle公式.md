---
title: 炼丹童子的自我修养（更新。。）
date: 2025-03-30 12:16:38
tags:
---

我认为对dl这个东西，每人都有自己的职责：scientist实验这些框架能否解决新的问题（太上老君/生物学家）；engineer搭建快速框架/硬件（怎么造炉子/工程师）；mathematicians/physics people思考这个炉子的可解释性（永远的好奇宝宝/物理学家）；最后data scientist套现有的公式炼丹解决问题（炼丹童子/做题家）；

上dl课每次学完玄乎的丹方总是想着自己实践一下，最后总是发现其实没啥可实践的，除了一些infra的东西（框架/infra for ml）engineer可以做做；给data scientist留下的工程实践不难，但是却需要对问题有深刻的理解，套正确的公式。

kaggle是一个很好的训练套公式理解的平台，并且很适合我这种算力不够的学生写一些小比赛练手，遂写博客总结一下pipeline和常用的框架，省的之后思考。

## 炼丹童子的自我修养

### 处理data

#### 1. 预处理
``` py
path = # ... 
os.listdir(path)
 ```

例子：minst
![alt text](image.png)
``` py 
train = pd.read_csv(digit_recognizer_path + "/train.csv", dtype = np.float32)

# split data into features(pixels) and labels(numbers from 0 to 9)
targets_numpy = train.label.values
features_numpy = train.loc[:,train.columns != "label"].values/255 # normalization

# train test split. Size of train data is 80% and size of test data is 20%.
features_train, features_test, targets_train, targets_test = train_test_split(features_numpy,
targets_numpy,
test_size = 0.2,
random_state = 42)

# create feature and targets tensor for train set. As you remember we need variable to accumulate gradients. Therefore first we create tensor, then we will create variable
featuresTrain = torch.from_numpy(features_train)
targetsTrain = torch.from_numpy(targets_train).type(torch.LongTensor) # data type is long

# create feature and targets tensor for test set.
featuresTest = torch.from_numpy(features_test)
targetsTest = torch.from_numpy(targets_test).type(torch.LongTensor) # data type is long
```

#### 2. 参数
``` py
# batch_size, epoch and iteration
batch_size = 100
n_iters = 10000
num_epochs = n_iters / (len(features_train) / batch_size)
num_epochs = int(num_epochs)
```

#### 3. dataloader设置和sample可视化
``` py
# Pytorch train and test sets
train = torch.utils.data.TensorDataset(featuresTrain,targetsTrain)
test = torch.utils.data.TensorDataset(featuresTest,targetsTest)

# data loader
train_loader = DataLoader(train, batch_size = batch_size, shuffle = False)
test_loader = DataLoader(test, batch_size = batch_size, shuffle = False)

# visualize one of the images in data set
plt.imshow(features_numpy[10].reshape(28,28))
plt.axis("off")
plt.title(str(targets_numpy[10]))
plt.savefig('graph.png')
plt.show()
 ```

3. 写个summary
## 丹方（常用的框架nn；pytorch）
Regression: nn.Linear
ex: https://www.kaggle.com/competitions/titanic

Classification: (nn.Linear + sigmoid) *n + softmax
ex: 经典的mnist https://www.kaggle.com/competitions/digit-recognizer

