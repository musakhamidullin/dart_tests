class DummyObject {
  const DummyObject(this.value);
  final int value;

  @override
  bool operator ==(Object other) =>
      other is DummyObject &&
      other.runtimeType == runtimeType &&
      other.value == value;

  @override
  int get hashCode => value.hashCode;
}

void main(List<String> arguments) {
  ///--------------------------
  ///--------------------------
  ///Tell result of prints
  // const c1 = DummyObject(100);
  // final c2 = DummyObject(100);
  // final c3 = const DummyObject(100);
  // print(c1 == c2);
  // print(c1 == c3);
  // print(identical(c1, c2));
  // print(identical(c1, c3));
  // print(identityHashCode(c1) == c1.hashCode);
}
