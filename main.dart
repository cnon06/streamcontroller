

import 'dart:async';

void main(List<String> args) async {
  var myStreamController = StreamController<int>();
  Stream<int> myStream = myStreamController.stream;
  Sink<int> mySink = myStreamController.sink;

  mySink.add(5);
  Future.delayed(Duration(seconds: 1));
  mySink.add(10);
  Future.delayed(Duration(seconds: 1));
  mySink.add(15);

  myStream.listen((event) {
    print(event);
  });
  
}
