---
layout: post
title: データベースパフォーマンスアップの教科書 基本原理編
categories: rank_3
tags: [DB]
---


<div class="book"><div class="book_image"><a href="http://www.amazon.co.jp/dp/4798111694"><img src="/images/database_performance.jpg"></img></a></div><div class="book_info">エンコアコンサルティング/翔泳社</div><div class="clear"></div></div>

この本を読むといかに自分がデータベースのことを理解していなかったかが分かる(知りたくもなかったのだけど)。インデクスなどを使ってどうジョインされるかが書いてある。インデクスを使いどのように検索されるかを想像しながらSQLが書ける気になれる。とにかく長い。個人的に興味がないこともあり他の本にも浮気しながら読むのに1ヶ月くらいかかった。6章のジョインの説明だけでも良い気がしたけど、そこまで読んでいたから理解できたのか。

それにしてもデータベースのプロ(とういかSQLを書く必要があるアプリケーション屋さん)がここら辺のことを理解しているのだろうか。DBMSをブラックボックスにしてしまっていて遅いのを全て性能のせいにしているのではないか。「じゃあ他のDBMSにしましょう」とか「じゃあ、ハードを買いましょう」とかになっていないのか疑問。というのは、この手の本が少なすぎる。本屋に行ってもキチント説明している本が他に見つからなかった。コッドを始めとした教科書的なものでさえも詳細には書いていない。DBMSの実装依存と言ってしまえばそれまでなのだけど、それにしてもどのような技術でジョインされるかくらい知るべきだと思うのだけど。みんなどうやって知識を得ているのか不思議に思った。ネットワーク、OS、プログラム言語など他の分野はキチント書いてある本が多いのに。自分の本の探し方が悪いだけと期待したい。

残念ながらこの本の書き方は自分には合わない。日常の例を使いながら直感的に説明しようとしているのだけどその例に違和感があり分かりづらかったりする。逆に丁寧に説明して欲しい個所が関連知識を前提にさらりと書いてあり、それを知らない(それを含めて知りたい)自分は分からずがっかりさせられる。章の構成ももう少し読みやすく出来ると思う。

とは言えこの手の本は他に無いということと、良いことを書いていることには違いないという意味で、良い本だと思う。