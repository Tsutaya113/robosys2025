# robosys2025
本リポジトリは千葉工業大学 未来ロボティクス学科 2025年度 ロボットシステム学内で行った内容に基づいて作成された練習用リポジトリです。

# element lookup
## 概要
標準的な周期表を用いて、入力された元素番号の元素記号を検索するコマンドです。  
![CI](https://github.com/Tsutaya113/robosys2025/actions/workflows/test.yml/badge.svg)

## テスト環境
OS            : Ubuntu 24.04.5 LTS / Windows 11  
python-version: 3.7 ~ 3.12  
確認環境      : Ubuntu 24.04.5 LTS + GitHub Actions (CI)

## インストール方法
下記のコマンドを使用し、クローンを行ってください。  

```shell
$ git clone https://github.com/Tsutaya113/robosys2025.git
$ cd robosys2025
```

## 使い方
標準入力から以下の形式で元素番号を与えます。

```
MMM
```
入力後、Ctrl + D で実行します。

実行例

```shell
$ echo "2" | ./element_lookup.py
 He
```

複数行にも対応しています。

```shell
$ printf "4\n26\n" | ./element_lookup.py
 Be
 Fe
```

## 入力仕様
- 元素番号:1~118の整数    

不正な数字は以下のように出力されます。    

- 範囲外の日付    : `invalid number`  
- フォーマット不正:`invalid input`  
- 入力なし        : Usage表示

## 著作権・ライセンス
- このソフトウェアパッケージは、GNU General Public License v3.0（GPL-3.0-only）の下、再頒布および使用が許可されています。
- [README](https://github.com/Tsutaya113/robosys2025/blob/main/README.md)は、[asnm1208](https://github.com/asnm1208)の[robosys2025](https://github.com/asnm1208/robosys2024/blob/main/README.md)(© 2024 Kai Nonaka)を参考に作られています。
- © 2025 Tsutaya Koki
