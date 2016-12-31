---
layout: post
title: Collective Intelligence in Action
categories: rank_3
tags: [web]
---


<div class="book"><div class="book_image"><a href="http://www.amazon.com/dp/1933988312"><img src="/images/collective_intelligence_in_action.jpg"></a></div><div class="book_info">Satnam Alag/Manning Pubns Co</div><div class="clear"></div></div>

発売前なので発売後用に、ManningのCollective Intelligence in Actionを読んだ感想をここに記す。発売されたらレビューに書く。発売前のものがPDFで購入できるようになっている。 
[http://www.manning.com/alag/](http://www.manning.com/alag/) 

初めて本をPDFで購入した。良い感じ。発売前の本(発売予定日は8月)が買えるし、部分的にプリントアウト出来るので持ち運びが楽だし、メモをガンガン出来るし、躊躇無く捨てれるし、場所を取らないし。電子ペーパー早く実用的になって欲しい。 

既にO'ReillyのCollective Intelligenceを読んでいたからか、前半はあまり得られるものが無かった。9章から読んだ方が良いと思う。9章以降は、自分の興味と一致していたり、新たな知識も得ることが出来たりしておもしろかった。 

O'Reillyと比べ、WEKA, Lucene/Javaを使っているあたりが、比較的本格的なアプリケーションを作るための基盤の説明に重点を置いている気がする。Amazonや Google News personalizationなど大規模なユーザやアイテムを持つサイトの技術を垣間見れる(cf. 12.4章のメモ)。 

印象的だったのは、リコメンド手法で取られた戦略。この分野ではいろいろな手法があるのだけど、あるコンペティションで優勝したのは、それらを組み合わせた手法であること(cf. 12.4.3章のメモ)。その数なんと107個。重み付けも計算でやらせているのだと思う。よくハードでは数ある中から一つを選定するけど、ソフトウェアの場合こういうことが出来るから強い。 

もう一つは、優れたアイデアを得るためにコンペティションを使う所。本には「これも集合知(collective intelligence)だ」と書かれていて目から鱗。 

読んでいて思ったのはJavaがうっとおしいということ。簡単なことをするためにgetter, setterやらで紙面を使う。実際のコーディングの時は仕方がないかも知れないが、本で説明するのには向いていない。余計なノイズが多く乗るため説明したい本質的なコードがどこにあるのか分かりづらい。これに比べて、pythonやrubyはやりたいことだけを書けるように設計されている点で優れていると思う。 

自分用メモはgoogle docsに残した
