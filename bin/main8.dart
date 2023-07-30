class GenericObject<T> {
  GenericObject(this._input);

  final T _input;
  late T result;

  Future<T> getResult() async {
    result = await Future.delayed(
      Duration(seconds: 3),
      () {
        if (_input is String) {
          return _input;
        }
        if (_input is int) {
          return _input;
        }
        throw 'Only String or int supported';
      },
    );
    return result;
  }
}

void main(List<String> arguments) async {
  final object1 = GenericObject("One two three");
  print(object1.result);
  print(await object1.getResult());

  final object2 = GenericObject(25.5);
  print(object2.result);

  final object3 = GenericObject(25);
  print(object3.result);
}
