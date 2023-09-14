import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  // print('Hello world: ${dart_application_1.calculate()}!');
  // dynamic data = 'Hello World';
  // data = 21;
  // print(data);

  // var data = 'Hello World';
  // data = 21;

  // pengkondisisan menggunakan if else
  var nilai = 70;
  var predikat;
  if (nilai >= 81 && nilai <= 100) {
    predikat = 'A';
  } else if (nilai >= 76) {
    predikat = 'B';
  } else if (nilai >= 71) {
    predikat = 'C';
  } else if (nilai >= 66) {
    predikat = 'D';
  } else {
    predikat = 'E';
  }

  print(predikat + '\n');

  // pengkondisian menggunakan switch case
  // switch (nilai) {
  //   case >= 81 && <= 100:
  //     print('A');
  //     break;
  //   default:
  // }

  void test() {
    var s = '';
    var batas = 5;
    for (var i = 0; i < batas; i++) {
      for (var j = 0; j <= i; j++) {
        s += '🥶 ';
      }
      s += '\n';
      if (i == batas - 1) {
        for (var i = 5; i > 0; i--) {
          for (var j = i - 1; j > 0; j--) {
            s += '🥶 ';
          }
          s += '\n';
        }
      }
    }

    // print('\n');
    print(s);
  }

  test();
}
