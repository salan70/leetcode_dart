class Solution {
  List<int> twoSum(List<int> numberList, int target) {
    for (var i = 0; i < numberList.length; i++) {
      /// i より後の要素を格納する配列。
      final sublist = numberList.sublist(i + 1);
      for (var j = 0; j < sublist.length; j++) {
        if (numberList[i] + sublist[j] == target) {
          /// return する配列の2つ目の要素の index.
          /// 
          /// numberList における index を表す。
          final secondIndex = i + j + 1;
          return [i, secondIndex];
        }
      }
    }

    // 問題の前提として答えが存在するので、適当な（意味のない）値を返している。
    return [0, 0];
  }
}
