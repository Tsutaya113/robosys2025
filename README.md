# robosys2025

本リポジトリは、千葉工業大学 未来ロボティクス学科における2025年度「ロボットシステム学」の授業内容をもとに作成した、学習用の練習リポジ
トリです。

# element_lookupコマンド
![CI](https://github.com/Tsutaya113/robosys2025/actions/workflows/test.yml/badge.svg)

標準的な周期表を用いて、入力された元素番号の元素記号を検索するコマンドです。  
### 使い方
準備として下記のコマンドを使用し、クローンを行ってください。

```shell
$ git clone https://github.com/Tsutaya113/robosys2025.git
$ cd robosys2025
```

こうすることで、クローンしたリポジトリ内にelement_lookupがあり、実行できるようになります。

標準入力から元素番号を与え、実行することで元素記号を検索できます。


実行例

```shell
$ echo "2" | ./element_lookup
 He
```

### 入力についての説明
- 元素番号:1~118の整数を入力することで元素記号を出力します。

不正な入力は以下のように出力されます。

- 範囲外の元素番号
```shell
$ echo "119" | ./element_lookup
 invalid number
```

- フォーマット不正
```shell
$ echo "abc" | ./element_lookup
 invalid input
```

- 入力なし
```shell
$ cat /dev/null | ./element_lookup
Usage: 標準入力から原子番号を1つ入力してください（1〜118）
例:
26
```

## テスト環境
- Ubuntu 22.04.5 LTS

## 必要なソフトウェア
- Github Actions
  - テスト済みのpythonバージョン: 3.7 ~ 3.12  

## 著作権・ライセンス・利用しているソフトウェア
- Ubuntu 22.04.5 LTS / Python3 .13 .5
- このソフトウェアパッケージは、3条項BSDの下、再頒布および使用が許可されています。  
- 本[README](https://github.com/Tsutaya113/robosys2025/blob/main/README.md)は、[asnm1208](https://github.com/asnm1208)の[robosys2025](https://github.com/asnm1208/robosys2025/blob/main/README.md)（© 2025 asnm1208）と[tadano0405](https://github.com/tadano0504)の[robosys2025](https://github.com/tadano0504/robosys2025/blob/main/README.md)（© 2025 Tadano Keito）を参考に作られています。
- © 2025 Tsutaya Koki
