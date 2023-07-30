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
  try {
    return throwError();
  } catch (e) {
    return Future.value(1);
  }
}

Future<int> throwError() {
  return Future.error(
    Exception('Critical error'),
  );
}
