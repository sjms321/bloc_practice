import 'dart:async';

class CountBloc {
  int _count = 0;
  final StreamController<int> _countSubject = StreamController<int>();
  Stream<int> get count => _countSubject.stream;

  add() {
    _count++;
    _countSubject.sink.add(_count);
    print("add");
  }

  substract() {
    _count--;
    _countSubject.sink.add(_count);
    print("sub");
  }

  dispose() {
    _countSubject.close();
  }
}
