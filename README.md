# gh-contributions

GitHub の草を生やすシェルスクリプト。


## gh-contributions.sh

`git commit --date` オプションを利用して草を生やすシェルスクリプト。

- [Corredor - GitHub に草を生やすシェルスクリプト「gh-contributions」を作った](http://neos21.hatenablog.com/entry/2017/08/12/080000)

### How to Use?

予め GitHub Contributions が有効になる Git ユーザ情報を設定しておく。

`gh-contributions.sh` を任意のリポジトリの `master` ブランチ (GitHub Contributions が有効になるブランチ) に配置する。

`gh-contributions.sh` を開き、変数 `START` と `END` を任意の日付に設定する。`YYYY-MM-DD` 形式が望ましい。

設定ができたら `gh-contributions.sh` を実行する。

```sh
$ sh ./gh-contributions.sh
```

するとカレントディレクトリの `gh-contributions.md` に日付を追記しつつ、1日につき1つの `git commit` を生成する。

あとは `git push` すれば OK。


## gh-contribution-that-day.sh

引数で指定した日付のコミットを生成し、草を生やすシェルスクリプト。

- [Corredor - 引数で指定した日付のコミットをデッチ上げる gh-contribution-that-day を作った](http://neos21.hatenablog.com/entry/2017/09/02/080000)

### How to Use?

予め GitHub Contributions が有効になる Git ユーザ情報を設定しておく。

`gh-contributions.sh` を任意のリポジトリの `master` ブランチ (GitHub Contributions が有効になるブランチ) に配置する。

以下のように引数でコミットを生成したい日付を指定して `gh-contribution-that-day.sh` を実行する。

```sh
$ sh ./gh-contribution-that-day.sh 20170120
```

するとカレントディレクトリの `gh-contributions.md` に日付を追記しつつ、1つの `git commit` を生成する。

あとは `git push` すれば OK。


## Author

[Neo](http://neo.s21.xrea.com/) ([@Neos21](https://twitter.com/neos21))


## Links

- [Neo's World](http://neo.s21.xrea.com/)
- [Corredor](http://neos21.hatenablog.com/)
- [Murga](http://neos21.hatenablog.jp/)
- [El Mylar](http://neos21.hateblo.jp/)
- [Bit-Archer](http://bit-archer.hatenablog.com/)
- [GitHub - Neos21](https://github.com/Neos21/)


[![WTFPL](http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-1.png "WTFPL")](http://www.wtfpl.net/)
