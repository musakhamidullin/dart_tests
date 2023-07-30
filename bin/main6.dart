void main(List<String> arguments) async {
  try {
    final result = await getInt();
    print(result);
  } catch (e) {
    print(2);
  } finally {
    print(3);
  }
}

Future<int> getInt() async {
  final result = await Future.delayed(
    Duration(seconds: 2),
    () => 1,
  ).timeout(
    Duration(seconds: 1),
    onTimeout: () => 5,
  );
  return result;
}
