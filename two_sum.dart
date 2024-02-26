class Solution {
  List<int> twoSum(List<int> numberList, int target) {
    for (var i = 0; i < numberList.length; i++) {

      // j の初期値を i + 1 とすることで、 i より後の値のみチェックできるようにしている。
      for (var j = i + 1; j < numberList.length; j++) {
        if (numberList[i] + numberList[j] == target) {
          return [i, j];
        }
      }
    }

    // 問題の前提として答えが存在するので、適当な（意味のない）値を返している。
    return [];
  }
}
