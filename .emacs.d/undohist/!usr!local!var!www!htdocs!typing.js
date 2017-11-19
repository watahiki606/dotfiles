
((digest . "330ce3e31c3657e2609fba856b230af8") (undo-list nil (1504 . 1516) ("tojava" . -1504) ((marker*) . 6) ((marker) . -6) nil (1504 . 1510) nil ("str" . 1504) ((marker . 1504) . -1) ((marker) . -3) 1505 (t 22965 6436 0 0) nil (1501 . 1504) nil (1489 . 1501) ("tojava" . -1489) nil (1489 . 1495) nil (nil rear-nonsticky nil 1638 . 1639) (nil fontified nil 1489 . 1639) (1489 . 1639) (t 22964 59519 0 0) nil (nil rear-nonsticky nil 4263 . 4264) (nil fontified nil 4249 . 4264) (4249 . 4264) nil (4244 . 4249) (t 22964 42041 0 0) nil (1484 . 1489) (t 22963 49084 0 0) nil (7950 . 7951) 4835 nil (1 . 7950) ("document.onkeydown = typeGame; //キー押下時に関数tpypeGame()を呼び出す
document.onkeyup = shiftUp;
//文字を格納する配列(keyCodeの並び順と同じ並びにする)
var upperElement = [\"A\", \"B\", \"C\", \"D\", \"E\", \"F\", \"G\", \"H\", \"I\",
    \"J\", \"K\", \"L\", \"M\", \"N\", \"O\", \"P\", \"Q\", \"R\",
    \"S\", \"T\", \"U\", \"V\", \"W\", \"X\", \"Y\", \"Z\",
    \" \", \"_\", \"+\", \"\\|\", \"~\", \"{\", \"}\", \":\", \"\\\"\", \"<\", \">\", \"?\",
    \")\", \"!\", \"@\", \"#\", \"$\", \"%\", \"^\", \"&\", \"*\", \"(\",
];
var lowerElement = [\"a\", \"b\", \"c\", \"d\", \"e\", \"f\", \"g\", \"h\", \"i\",
    \"j\", \"k\", \"l\", \"m\", \"n\", \"o\", \"p\", \"q\", \"r\",
    \"s\", \"t\", \"u\", \"v\", \"w\", \"x\", \"y\", \"z\",
    \" \", \"-\", \"=\", \"\\\\\", \"\\`\", \"[\", \"]\", \";\", \"'\", \",\", \".\", \"/\",
    \"0\", \"1\", \"2\", \"3\", \"4\", \"5\", \"6\", \"7\", \"8\", \"9\",
];
//キーコードを格納する配列(upper/lowerElementと同じ並びにする)
var keyCode = [65, 66, 67, 68, 69, 70, 71, 72, 73,
    74, 75, 76, 77, 78, 79, 80, 81, 82,
    83, 84, 85, 86, 87, 88, 89, 90,
    32, 189, 187, 220, 192, 219, 221, 186, 222, 188, 190, 191,
    48, 49, 50, 51, 52, 53, 54, 55, 56, 57
                       ];
//問題文字列の文字が大文字か小文字かを区別するためのフラグ
var shiftFlg = [];

//inputKeycode ==keyCode[ elementIndex[0] ]みたいに使う
//つまり、keyCode配列の添字として使う。
var elementIndex =[];

//グローバル変数群
var typStrings = \"\"; //問題の文字列すべてを格納
var cnt = 0; //何文字目かを格納
var miss = 0; //ミスタイプの数
var typStart, typEnd; //開始時と終了時の時刻を格納
var ans = 0; //回答数
var typStringsLength = 0; //問題文の長さ
var nowGaming = false; //ゲーム中かどうかフラグ
var gameSetFlag = false; //ゲームを最後までやったかフラグ
var shiftCheck = 0;//シフトが押された状態かを区別する
//dat配列にMessageを一文字ずつ格納していく関数
var dat = [];

function createDat() {
    for (var i = 0; i < tojavascript.length; i++) {
        dat[i] = tojavascript.charAt(i);
    }
}

//問題の文字列をキーボード番号に対応させる。
function mapTypStrings(typStrings) {

    for (var i = 0; i < typStrings.length; i++) {
        //問題の文字列のi番目の文字を探すためにserchに文字を格納する。
        var serch = typStrings.charAt(i);
        console.log(serch + \"をserchします\");
        //これでアクセスできるやん
//        console.log(\"test : \"+ element[i]['upperElement']);
        //serchが大文字の要素の何番目にあるかを探し、
        //後にkeyCodeの添字として使うためにelementIndex配列に格納していく。
        elementIndex[i] = lowerElement.indexOf(serch);
        if (elementIndex[i] != -1) {
            shiftFlg[i] = 0;
            console.log(\"elementIndexが見つかりました : \" + elementIndex[i] + \"shiftflg : \" + shiftFlg[i]);
        }
        //見つからない場合は-1を返す→大文字の要素の方から探す。
        if (elementIndex[i] < 0) {
            elementIndex[i] = upperElement.indexOf(serch);
            shiftFlg[i] = 1;
           console.log(\"見つからないのでUpperから探しelementindexは : \" + elementIndex[i] + \"shiftflg : \" + shiftFlg[i]);
        }
    }
}

//表示の方法を検討
function showtypStrings(typStrings) {
    //一行あたりの最大文字数、一画面あたりの最大行数を固定する。変更可。
    var maxCharPerLine = 40;
    var maxLinePerScreen = 50;
    //実際に表示する一行あたりの文字数、行数を格納する。
    var oneLine = maxCharPerLine;
    var oneScreen = maxLinePerScreen;
    //最後の一行対策
    var lastLineFlag = 0;
    //問題文の文字列の添字を格納
    var idnum;

    //問題文が一行未満になる時は表示する一行あたりの文字数を問題文の文字数と同じにしておく。
    if (typStrings.length < maxCharPerLine) {
        oneLine = typStrings.length;
    }
    //問題文が50行未満になるときは表示する行数は一行あたりの文字数で割った行数分とする。
    if (typStrings.length / maxCharPerLine < maxLinePerScreen) {
        oneScreen = parseInt(typStrings.length / oneLine);
        //この場合は最後の一行対策が必要
        lastLineFlag = 1;
    }
    //htmlには問題文にタグを付けて送る。
    var decolatedTypString = \"<table class='Q'>\";
    //iは行方向を表す。
    for (var i = 0; i < oneScreen; i++) {
        decolatedTypString += \"<tr>\";
        //内側のループで一文字ずつにタグをつける。
        for (var j = 0; j < oneLine; j++) {
            idnum = i * oneLine + j;
            decolatedTypString += \"<td id='word\" + idnum + \"'>\" + typStrings[idnum] + \"</td>\";
        }
        decolatedTypString += \"</tr>\";
        //最後の一行で残りの問題文を出力する。
        if (i == oneScreen - 1 && lastLineFlag == 1) {
            decolatedTypString += \"<tr>\";
            for (var k = 0; k < typStrings.length % oneLine; k++) {
                idnum++;
                decolatedTypString += \"<td id='word\" + idnum + \"'>\" + typStrings[idnum] + \"</td>\";
            }
            decolatedTypString += \"</tr>\";
        }
    }
    decolatedTypString += \"</tr>\";
    decolatedTypString += \"</table>\";
    document.getElementById(\"typstring\").innerHTML = decolatedTypString;
}

//タイピングゲームの問題をセットする関数
function gameSet() {
    nowGaming = true; //ゲーム中になる
    gameSetFlag = false; //ゲーム中になる
    //問題文とカウント数をクリアする
    cnt = 0;
    miss = 0;
    typStrings = \"\";
    //問題文の作成
    createDat();
    //typStringsにつなげる。
    for (var i = 0; i < dat.length; i++) {
        //typStrings = typStrings + dat[i]['c_word'];
        //phpから受け取った文字列を配列に１文字ずつ格納したものをtypStringsに格納する
        typStrings = typStrings + dat[i];
    }
    //作成された問題文の文字がそれぞれelementの何番目かをelementIndex配列に格納していく。
    mapTypStrings(typStrings);
    //終了判定のために問題文の長さを格納する。
    typStringsLength = typStrings.length;
    //問題枠に表示する
    showtypStrings(typStrings);
}

//受け取ったcssIDの文字色を点滅させる。のは後でやる。
var flg = true;
//var countBlink = 0;
var nextIdName = 0;

//shiftが押された場合は1を返す。
function shiftDwn(){
            if(event.keyCode == '16'){
                shiftCheck = 1;
            }
        console.log(\"shiftCheck : \" + shiftCheck);
}

//document.onkeyupで呼ばれる関数。キーが離されたときに呼ばれる。
//shiftが離された場合は0を返す。
function shiftUp(){
        if(event.keyCode == '16'){
        shiftCheck = 0;
    }
    console.log(\"shiftCheck : \" + shiftCheck);
}
//キー入力を受け取る関数
function typeGame(evt) {
    var inputKeycode; //入力されたキーコードを格納する変数

    //点滅のカウントをクリア
    countBlink = 0;

    //入力されたキーのキーコードを取得
    if (document.all) {
        inputKeycode = event.keyCode;
    } else {
        inputKeycode = evt.which;
    }
    //シフトが押されたらshiftCheckを1にする。
    shiftDwn();
    //スペースが押されたらゲームスタート
    if (inputKeycode == '32' && !nowGaming) gameSet();
    //rが押されたらリスタート
    if (inputKeycode == '82' && gameSetFlag) gameSet();
    //ゲーム中にescが押されたらリスタート
    if (inputKeycode == '27' && nowGaming) gameSet();
    console.log(\"inputKeycode is : \" + inputKeycode);
    //入力されたキーコードと、問題文のキーコードを比較
    if (inputKeycode == keyCode[elementIndex[cnt]] && shiftCheck == shiftFlg[cnt]) {
        //キーコードが一致した時の処理

        //最初の1文字が入力された時間を記録する
        if (cnt == 0) {
            typStart = new Date();
        }

        //入力されたセルの文字色を黒色にする
        var idName = \"word\" + cnt;
        document.getElementById(idName).style.color = \"#370f29\";
        document.getElementById(idName).style.background = \"#370f29\";

        //次の文字は赤くする。
        nextIdName = \"word\" + (cnt + 1);
        if ((cnt + 1) < typStringsLength) {
            document.getElementById(nextIdName).style.color = \"#370f29\";
            document.getElementById(nextIdName).style.background = \"#21f838\";
        }
        cnt++; //カウント数を＋１にする

        //全文字入力したか確認
        if (cnt < typStringsLength) {

            //問題枠に表示する
            document.getElementById(\"stopwatch\").innerHTML = \"STATUS<br>\" + \"ALL : \" + typStringsLength + \" Collect : \" + cnt +
                \" left : \" + (typStringsLength - cnt) + \" miss : \" + miss;

        } else {
            //全文字入力していたら、終了時間を記録する
            typEnd = new Date();

            //終了時間－開始時間で掛かったミリ秒を取得する
            var keika = typEnd - typStart;

            //1000で割って「切捨て」、秒数を取得
            var sec = Math.floor(keika / 1000);

            //1000で割った「余り(%で取得できる）」でミリ秒を取得
            var msec = keika % 1000;

            //問題終了を告げる文字列を作成
            var fin = \"finish ： \" + sec + \" sec \" + msec + \" m \";

            //ゲームセットの判定
            gameSetFlag = true;

            //問題枠にゲーム終了を表示
            document.getElementById(\"typstring\").innerHTML = fin;
            document.getElementById(\"stopwatch\").innerHTML = \"STATUS<br>\" + \"ALL : \" + typStringsLength + \" Collect : \" + cnt + \" left : \" + (typStringsLength - cnt) + \" miss : \" + miss;

        }
    } else { //不正解の場合はここにelse
        if (cnt !== 0 && gameSetFlag !== true) miss++;
        document.getElementById(\"stopwatch\").innerHTML = \"STATUS<br>\" + \"ALL : \" + typStringsLength + \" Collect : \" + cnt + \" left : \" + (typStringsLength - cnt) + \" miss : \" + miss;
    }
}
" . 1) ((marker . 1) . -2062) ((marker . 1) . -1869) ((marker . 1) . -1597) ((marker . 1504) . -5608) ((marker* . 8150) . 7930) ((marker . 1) . -17) ((marker . 3224) . -58) (t 22963 49058 0 0) nil ("
" . 59) nil ("//document.onkeydown = shiftDwn;" . 59) (t 22963 49035 0 0) nil (5637 . 5641) ("にする。" . -5637) (5637 . 5641) ("にする" . -5637) (5637 . 5640) ("にすｒ" . -5637) (5637 . 5640) ("にす" . -5637) (5637 . 5639) ("にすう" . -5637) (5637 . 5640) ("にすうｒ" . -5637) (5637 . 5641) ("にすうｒ" . -5637) (5637 . 5641) ("にす" . -5637) (5637 . 5639) ("にｓ" . -5637) (5637 . 5639) ("に" . -5637) (5637 . 5638) ("ｎ" . -5637) (5635 . 5638) ("を" . -5635) (5635 . 5636) ("ｗ" . -5635) (5630 . 5636) nil ("c" . -5630) nil ("h" . -5631) nil ("e" . -5632) nil ("c" . -5633) nil ("k" . -5634) nil (5625 . 5635) nil ("し" . -5625) (5625 . 5626) ("しｆ" . -5625) (5625 . 5627) ("しｆｔ" . -5625) (5625 . 5628) ("しｆ" . -5625) (5625 . 5627) ("し" . -5625) (5625 . 5626) ("ｓｈ" . -5625) (5625 . 5627) ("ｓ" . -5625) (5625 . 5626) nil undo-tree-canary))
