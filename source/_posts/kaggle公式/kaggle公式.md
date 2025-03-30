---
title: kaggle之旅
date: 2025-03-30 12:16:38
tags:
---

*我认为对dl这个东西，每人都有自己的职责：scientist实验这些框架能否解决新的问题；engineer搭建快速框架/硬件；data scientist套现有的公式炼丹解决问题；*

*上dl课每次学完玄乎的丹方总是想着自己实践一下，最后总是发现其实没啥可实践的，除了一些infra的东西（框架/infra for ml）engineer可以做做；给data scientist留下的工程实践不难，但是却需要对问题有深刻的理解，套正确的公式，kaggle是一个很好的训练这个的平台，遂写博客总结一下pipeline和常用的框架，省的之后思考*

## 公式做题就是快
1. 看data： 

## 常用的框架nn（pytorch）
Regression: nn.Linear
ex: https://www.kaggle.com/competitions/titanic

Classification: (nn.Linear + sigmoid) *n + softmax
ex: 经典的mnist https://www.kaggle.com/competitions/digit-recognizer

