# gh-contributions

GitHub の草を生やすシェルスクリプト。


## gh-contributions.sh

`git commit --date` オプションを利用して草を生やす Bash スクリプト。

### How to Use?

予め GitHub Contributions が有効になる Git ユーザ情報を設定しておく。

`gh-contributions.bash` を任意のリポジトリの `master` ブランチ (GitHub Contributions が有効になるブランチ) に配置する。

`gh-contributions.bash` を開き、変数 `START` と `END` を任意の日付に設定する。`YYYY-MM-DD` 形式が望ましい。

設定ができたら `gh-contributions.bash` を実行する。

```bash
$ bash ./gh-contributions.bash
```

するとカレントディレクトリの `gh-contributions.md` に日付を追記しつつ、1日につき1つの `git commit` を生成する。

あとは `git push` すれば OK。


## gh-contribution-that-day.bash

引数で指定した日付のコミットを生成し、草を生やすシェルスクリプト。

### How to Use?

予め GitHub Contributions が有効になる Git ユーザ情報を設定しておく。

`gh-contributions.bash` を任意のリポジトリの `master` ブランチ (GitHub Contributions が有効になるブランチ) に配置する。

以下のように引数でコミットを生成したい日付を指定して `gh-contribution-that-day.bash` を実行する。

```bash
$ bash ./gh-contribution-that-day.bash 20170120
```

するとカレントディレクトリの `gh-contributions.md` に日付を追記しつつ、1つの `git commit` を生成する。

あとは `git push` すれば OK。


## Links

- [Neo's World](https://neos21.net/)


[![WTFPL](http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-1.png "WTFPL")](http://www.wtfpl.net/)
