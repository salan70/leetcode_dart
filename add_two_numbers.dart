class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    final reversedSumList = <int>[];

    /// 現在の桁の値。
    var currentDigitSum = 0;

    var currentL1 = l1;
    var currentL2 = l2;

    while (true) {
      if (currentL1 != null) {
        currentDigitSum += currentL1.val;
        currentL1 = currentL1.next;
      }

      if (currentL2 != null) {
        currentDigitSum += currentL2.val;
        currentL2 = currentL2.next;
      }

      reversedSumList.add(currentDigitSum % 10);

      // 繰り上がりがある場合。
      if (currentDigitSum >= 10) {
        currentDigitSum = 1;
      }
      // 繰り上がりがない場合。
      else {
        currentDigitSum = 0;
      }

      // currentL1, currentL2 それぞれに格納されている値全てを確認し終えたらループを抜ける。
      if (currentL1 == null && currentL2 == null) {
        break;
      }
    }

    // 最後の桁で繰り上がりがある場合、 true となる想定。
    if (currentDigitSum == 1) {
      reversedSumList.add(1);
    }

    return _toListNode(reversedSumList);
  }

  /// [list] を [ListNode] に変換する。
  ListNode _toListNode(List<int> list) {
    final listNode = ListNode();
    var currentNode = listNode;

    for (var i = 0; i < list.length; i++) {
      currentNode.val = list[i];

      // 最後の要素の場合、ループを抜ける。
      if (i == list.length - 1) {
        break;
      }

      currentNode.next = ListNode();
      currentNode = currentNode.next!;
    }

    return listNode;
  }
}
