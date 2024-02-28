class Solution {
  bool containsDuplicate(List<int> numberList) {
    // 問題の前提として、 numberList の要素数は１以上のため、
    // 0の場合は例外をスローする。
    if (numberList.length == 0) {
      Exception();
    }

    final sortedNumberList = _sortIntList(numberList);

    for (var i = 0; i < sortedNumberList.length; i++) {
      // 最後の要素の場合、 false を返す。
      if (i == sortedNumberList.length - 1) {
        return false;
      }

      // 現在の index の値と、次の index の値を比較する。
      if (sortedNumberList[i] == sortedNumberList[i + 1]) {
        return true;
      }
    }

    // ここまでたどり着くことはない想定のため、例外をスローする。
    throw Exception();
  }

  /// [numberList] を昇順に並び替えた List を返す。
  List<int> _sortIntList(List<int> numberList) {
    final targetList = numberList;
    targetList.sort();

    return targetList;
  }
}

// * 別解。
// 'Testcases passed, but took too long.' となる
// class Solution {
//   bool containsDuplicate(List<int> numberList) {
//     final List<int> checkedList = [];
//     for (final number in numberList) {
//       if (checkedList.contains(number)) {
//         return true;
//       }

//       checkedList.add(number);
//     }

//     return false;
//   }
// }

// * 別解。
// この方法だと、要素数が多い場合に制限時間内に処理しきれない。
// class Solution {
//   // 661 ms.
//   bool containsDuplicate(List<int> numberList) {
//     for (var i = 0; i < numberList.length; i++) {
//       for (var j = i + 1; j < numberList.length; j++) {
//         if (numberList[i] == numberList[j]) {
//           return true;
//         }
//       }
//     }

//     return false;
//   }
// }
