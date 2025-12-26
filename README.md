# robosys2025
本リポジトリは千葉工業大学 未来ロボティクス学科 2025年度 ロボットシステム学内で行った内容に基づいて作成された練習用リポジトリです。

![CI](https://github.com/Tsutaya113/robosys2025/actions/workflows/test.yml/badge.svg)

# element_lookup
## 概要
標準的な周期表を用いて、入力された元素番号の元素記号を検索するコマンドです。

## テスト環境
OS : Ubuntu 22.04.5 LTS / Windows 11  
python-version: 3.7 ~ 3.12  
確認環境 : Ubuntu 22.04.5 LTS + GitHub Actions （22.04）

## 使い方
下記のコマンドを使用し、クローンを行ってください。

```shell
$ git clone https://github.com/Tsutaya113/robosys2025.git
$ cd robosys2025
```

標準入力から元素番号を与えます。


実行例

```shell
$ echo "2" | ./element_lookup
 He
```

## 入力仕様
- 元素番号:1~118の整数

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

## 著作権・ライセンス
- このソフトウェアパッケージは、GNU General Public License v3.0（GPL-3.0-only）の下、再頒布および使用が許可されています。
- 本[README](https://github.com/Tsutaya113/robosys2025/blob/main/README.md)は、[asnm1208](https://github.com/asnm1208)の[robosys2025](https://github.com/asnm1208/robosys2025/blob/main/README.md)（© 2025 asnm1208）と[tadano0405](https://github.com/tadano0504)の[robosys2025](https://github.com/tadano0504/robosys2025/blob/main/README.md)（© 2025 Tadano Keito）を参考に作られています。
- © 2025 Tsutaya Koki
