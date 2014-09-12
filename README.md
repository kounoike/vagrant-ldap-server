# これはなに？

OpenLDAPのダメダメ設定のダメっぷりを示すVagrant一式です。

# どうやって試すの？

## 準備編

* `berks vendor`してberks-cookbooksディレクトリを取得し、`vagrant up`で構築します（hashicorp/precise32を持ってないと時間がかかります／適当なubuntu boxに差し替えても大丈夫だと思います）。
* `vagrant ssh`してboxの中に入り、`sh /vagrant/ldap_setup.sh`してLDAPのデータベースを構築します。

## 確認編

* `vagrant ssh -- -l user1`でパスワードuser1を入力します。
* `id`コマンドでuid=2000, gid=2000なことを確認します。
* 同じことをuser2/user2でやって、uid=2001, gid=2001なことを確認します。

## 設定変更

* `vagrant ssh`で再びvagrantユーザでログインします。
* `sudo sh /vagrant/ldap_change_setting.sh`してLDAPの設定に毒を仕込みます（slapdが再起動します）。

## 攻撃開始

* `vagrant ssh -- -l user1`で（パスワードuser1で）再度ログインします。
* `sh /vagrant/ldap_attack.sh`で攻撃します。
* 一度ログアウトして再度ログインします。
* `id`コマンドを見て驚いてください。

# 何をやっているの？

迂闊なaccess to * by self write設定により、自分自身の設定を書き換えられるLDAPサーバに対して、
「uidを0にして下さい」とお願いすることにより、ただのローカルユーザだった自分にroot権限を付与して
もらっています。

# どう設定すればよいの？

迂闊なaccess to * by self writeを入れなければ良いのです。uidNumber, gidNumberなどの勝手に変えてはまずい属性を
別のACLで保護してからaccess to * by self writeを入れるとかすれば良いでしょう。

# いつから知っていたの？

遅くとも2006年には知っていたのですが、再現環境を公開するのが難しかったため黙っていました。JP-CERTに問い合わせても
書籍／Webの設定例は管轄外とのことで取り扱ってもらえませんでしたし。

# どうして今公開したの？

Vagrantで簡単に再現環境が公開できるようになったのと、ダメダメな設定をまだ垂れ流してる書籍／Webがあるからです。
