---
layout: post
title: Java Puzzlers
categories: rank_4
tags: [プログラマ, java, パズル]
---


<div class="book"><div class="book_image"><a href="http://www.amazon.co.jp/dp/4894716895"><img src="/images/java_puzzlers.jpg"></img></a></div><div class="book_info">ジョシュア・ブロック, ニール・ガフター/ピアソン・エデュケーション</div><div class="clear"></div></div>

この手(*)の本に書いてあることには興味がなかった。自分には、そのような知識が既にあると思っていたし、そのような仕事もしていた。でも、この本は巷にあふれている本とレベルが違う。Effective Javaの著者と知り納得(読んでないけど)。自分の無知さを恥じるより深さに感心することが多かった。

東京-大阪を往復する間に、あっと言うまに読んでしまった。キチント考えていないからか。おそらくキチント考えても解けないでから、さらっと読むのが良いと思う。

次の3行のプログラムを見てニヤリと出来る人は読むことオススメ(本文中のパズルの1つだけど)。
System.out.println("what is this?");
 [http://google.com/](http://google.com/)
 System.out.println("do you thik this program is valid?");

一番驚いたのは、下のプログラムの実行結果(空白が全角なので注意)。

class Null {

　static void message() {

　　System.out.println("do you believe this program works?");

 　}

　public static void main(String[] args) {

 　((Null)null).message();

　}
}

(*) String s = new String("no good");のようなプログラムは無駄なのでやめましょうとか
