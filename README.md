# gh-contributions

`git commit --date` オプションを利用して草を生やすシェルスクリプト。

## How to Use?

予め GitHub Contributions が有効になる Git ユーザ情報を設定しておく。

`gh-contributions.sh` を任意のリポジトリの `master` ブランチ (GitHub Contributions が有効になるブランチ) に配置する。

`gh-contributions.sh` を開き、変数 `START` と `END` を任意の日付に設定する。`YYYY-MM-DD` 形式が望ましい。

設定ができたら `gh-contributions.sh` を実行する。

```sh
$ sh ./gh-contributions.sh
```

するとカレントディレクトリの `gh-contributions.md` に日付を追記しつつ、1日につき1つの `git commit` を生成する。

あとは `git push` すれば OK。
