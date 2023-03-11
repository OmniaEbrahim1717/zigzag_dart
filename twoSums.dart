import 'dart:svg';

class Solutions {
  List<int> twoSums(List numbers, int target) {
    int n = numbers.length;

    // for loop
    for (var i = 0; i < n; i++) {
      for (var j = 0; j < n; j++) {
        if (numbers[i] + numbers[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}
