void main(List<String> args) {
  // no3
  // funtion parameter
  void sayHello1(String name) {
    print('hello $name');
  }

  sayHello1('aly'); //hello aly

  //function dengan optional parameter
  String sayHello2([String? name, int? age, bool? isMarried, String? alamat]) {
    return 'Hello ${name} ${age} ${isMarried} ${alamat}';
  }

  print(sayHello2('John', 20)); //Begini cara pemanggilan
  print(sayHello2()); //Hello null null null

  //fuction devault value
  String sayHello3([String name = 'John']) {
    return 'Hello $name';
  }

  print(sayHello3()); //Hello John
  print(sayHello3('Jane')); //Hello Jane

  //named parameter
  String sayHello(
      {String name = 'John',
      int age = 20,
      bool isMarried = true,
      String alamat = 'Jakarta'}) {
    return 'Hello $name';
  }

  print(sayHello(age: 55, name: 'John Kowi Dodo'));

  print("\n");

  //no 4
  int tambah(int a, int b) {
    return a + b;
  }

  Function fungsiPenjumlahan = tambah;

  int hasil =
      fungsiPenjumlahan(3, 4); // Memanggil fungsi yang disimpan dalam variabel
  print("Hasil = $hasil");

  //no 5
  print("\n");
  var penjumlahan = (int a, int b) {
    return a + b;
  };

// Menggunakan anonymous function
  int result = penjumlahan(3, 10);
  print("Result = $result");

  //no 6
  //lexical scope
  print("\n");
  var x = 10;

  void printX() {
    print(
        x); // Variabel x dapat diakses di sini karena berada dalam lingkup leksikal yang sama.
  }

  printX();

  //lexical closures
  print("\n");
  Function makeMultiplier(int multiplier) {
    return (int value) {
      return multiplier * value; // Fungsi ini menutupi variabel 'multiplier'.
    };
  }

  void lexical() {
    var timesTwo = makeMultiplier(2);
    print(timesTwo(5)); // Output: 10
  }

  lexical();

  //no7
  print("\n");
  List<int> getValues() {
    int a = 1;
    int b = 2;
    return [a, b];
  }

  List<int> values = getValues();
  int a = values[0];
  int b = values[1];

  print(a);
  print(b);
}
