# 会計計算機
![test](https://github.com/kamarakakara/robosys2025/actions/workflows/test.yml/badge.svg)

## 概要
このコードでは商品の値段とその商品の個数を入力し、最後に税率を入力することで総額の算出を行います。


## インストール方法
以下の手順に従ってインストールを行い、実行権限の付与をおこなってください。
```
$ mkdir cashregister
$ cd cashregister
$ git clone https://github.com/kamarakakara/robosys2025 
$ chmod +x cashregister
```


## 使い方
```
$ echo 1200 2 500 3 10 | ./cashregister
4290
```
1. 標準入力を用いて、価格、個数の順に入力を行い、これを計算を行いたい商品の個数分行ってください。
2. 最後に税率を[%]で入力します。入力のない場合は税率を考慮しません。
3. 出力が得られれば成功です。なお出力の小数点以下は切り捨て処理を行っています。


## 必要なソフトウェア
- Python
	- テスト済み：Python 3.7 ~ 3.10


## テスト環境
- Ubuntu-22.04 LTS


## 著作権・ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです。
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 kamarakakara
