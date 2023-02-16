Stream<int> getNumbers() async* {
  for (int i = 0; i < 7; i++) {
    yield i;
    yield i;
    yield i;
    await Future.delayed(Duration(seconds: 1));
    // if (i == 2) {
    //   throw Exception('An error occurred');
    // }
  }
}

void main(List<String> args) async {
  var myStream = getNumbers();

  // myStream.expand((element) => [element, element * 2, 99,'ff']).listen((event) {
  //   print(event);
  // });

  // myStream.map((event) => event * 5).listen((event) {
  //   print(event);
  // });

  // myStream.where((event) => event % 2 == 0).listen((event) {
  //   print(event);
  // });

// myStream.where((event) => event % 2 != 0).listen((event) {
//     print(event);
//   });

  // myStream.take(2).listen((event) {
  //   print(event);
  // });

  // myStream.skip(2).listen((event) {
  //   print(event);
  // });

// myStream.distinct().listen((event) {
//     print(event);
//   });

  myStream
      .skip(2)
      .map((event) => event * 2)
      .distinct()
      .where((event) => event > 3)
      .listen((event) {
    print(event);
  });
}
