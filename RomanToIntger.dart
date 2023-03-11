class Solutions {
  int RomanToInt(String s) {
    Map RomanMap = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    int n = s.length;
    var nums = RomanMap[s[n - 1]];
    for (var i = n - 2; i >= 0; i--) {
      if (RomanMap[s[i]]! >= RomanMap[s[i + 1]]!) {
        if (nums != null) {
          nums += RomanMap[s[i]]!;
        }
      } else {
        if (nums != null) {
          nums -= RomanMap[s[i]]!;
        }
      }
    }
    return nums!;
  }
}
