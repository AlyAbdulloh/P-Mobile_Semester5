void main(List<String> args) {
  //langhkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  //langkah 3
  var names1 = <String>{};
  Set<String> names2 = {};
  // var names3 = {};

  names1.add("Achmad Aly Abdulloh");
  names1.add("2141720039");

  names2.addAll(names1);

  print(names1);
  print(names2);
}
