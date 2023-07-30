class Accumulator {
  const Accumulator(this.addition);

  static int value = 1;

  final int addition;

  void perform() {
    print(value);
    value += addition;
  }
}

void main(List<String> arguments) {
  const instance1 = Accumulator(2);
  instance1.perform();

  final instance2 = Accumulator(3);
  instance2.perform();

  print(Accumulator.value);
}
