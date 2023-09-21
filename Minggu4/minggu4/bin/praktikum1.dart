import 'package:minggu4/minggu4.dart' as minggu4;

void main(List<String> arguments) {
  // langkah 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  //langkah 3
  final list = List<String>.filled(
      5, ''); //list kosong atau default value = null dengan panjang index 5
  list[1] = "Achmad Aly Abdulloh";
  list[2] = "2141720039";
  assert(list.length == 5);
  assert(list[1] == "Achmad Aly Abdulloh");
  assert(list[2] == "2141720039");

  print(list.length);
  print(list[1]);
  print(list[2]);
}
