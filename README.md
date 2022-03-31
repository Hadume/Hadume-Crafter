# Rakula-Crafter
## 概要
カスタムレシピを『楽々』に使える作業台です  
<br>
## 使い方
「樽」の上に「額縁」(「輝く額縁」でもOK)を置き、額縁に「作業台」を入れることで『ラクラ・クラフター』を設置できます  
GUIはバニラのものとほとんど同じです  
## レシピの追加方法
- レシピメーカー  
  1. 「樽」の上に「額縁」(「輝く額縁」でもOK)を置き、額縁に「コマンドブロック」を入れることで『レシピメーカー』を設置できます  
  2. レシピメーカーを開き、左側の9スロットに「レシピに使用するアイテム」、右側の1スロットに「完成アイテム」を置き右端の出力ボタンを押すと、レシピ追加コマンドが出力されます  
  3. 出力されたコマンドをGameOutputなどからコピーしマイクラ内で実行してください  
  4. 最後に「/function hd.rc:add.recipes/」を実行することでレシピが追加されます  
- 様々なオプション  
  - 上記の方法で出力したコマンドに「Options」を追加することで特殊なクラフト方法を指定することができます  
	Optionsの一覧は以下のようになります  
    - Anywhere: クラフトスロット内の何処にあってもアイテムのNBTが同じであれば作成することができます (例: 各種コンクリートブロック)  
    - Mirror_VERT: アイテムが縦軸に反転していても作成することができます (例: 各種階段ブロック)  
    - Mirror_HOR: アイテムが横軸に反転していても作成することができます  
  (優先順位は「Anywhere→Mirror→None」となっています。 複数のOptionsを付けた場合これが適応されます)  
  - 上記の方法で出力したコマンドのItemsとdisplayの "id" を "Tag" に変更することで、事前に追加したTagのアイテムで作成することができます  
    Tag追加コマンド:  
    /data modify storage hd.rc.asset:tags _ append value {Name:"任意の名前",Value:["アイテムid",..]}  
- レシピサンプル  
  1. 松明  
  /data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,Tag:"minecraft:coals",Count:1b},{Slot:10b,id:"minecraft:stick",Count:1b}],Result:{id:"minecraft:torch",Count:4b}}  
	2. ダイヤモンドの斧  
  /data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:10b,id:"minecraft:diamond",Count:1b},{Slot:11b,id:"minecraft:stick",Count:1b},{Slot:20b,id:"minecraft:stick",Count:1b}],Result:{id:"minecraft:diamond_axe",Count:1b},Options:{Mirror_VERT:1b}}  
  3. 火打石と打ち金  
  /data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:flint",Count:1b}],Result:{id:"minecraft:flint_and_steel",Count:1b},Options:{Anywhere:1b}}  
  4. 棒  
  /data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,Tag:"minecraft:planks",Count:1b},{Slot:10b,Tag:"minecraft:planks",Count:1b}],Result:{id:"minecraft:stick",Count:4b}} 
  
<br>
  
## 連絡  
バグ報告や聞きたいことなどがありましたら[Twitter](https://twitter.com/Hadume_Damui)へご連絡をください  
  
<br>
  
## 更新履歴  
- v1.0 (2022/3/31)  公開  
