# 会計計算機
![test](https://github.com/kamarakakara/robosys2025/actions/workflows/test.yml/badge.svg)

## このプロジェクトについて
このコードでは商品の値段とその商品の個数を入力し最後に税率を入力することで、総額の算出を行うことが出来ます。


## インストール方法
```
$ mkdir cashregister
$ cd cashregister
$ git clone https://github.com/kamarakakara/robosys2025 
```

## 使い方
```
$ echo  | ./cashregister

```
1. echoの後に価格と個数を入力します。複数個の場合は続けて入力を行います。
2. 最後に税率を[%]で入力します。入力のない場合は税率を考慮しません。

## 必要なソフトウェア
* python
	** テスト済み：python 3.7 ~ 3.10

## テスト環境
* ubuntu-22.04

## 著作権・ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 kamarakakara
