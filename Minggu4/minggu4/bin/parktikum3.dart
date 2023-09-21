void main(List<String> args) {
  //langkah1
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  // print(gifts);
  // print(nobleGases);

  //labgkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //menambahkan elemen nama dan nim
  gifts.addAll({'nama': 'Achmad Aly Abdulloh', 'nim': '2141720039'});
  nobleGases.addAll({3: 'Achmad Aly Abdulloh', 4: '2141720039'});

  mhs1.addAll({'nama': 'Achmad Aly Abdulloh', 'nim': '2141720039'});
  mhs2.addAll({3: 'Achmad Aly Abdulloh', 4: '2141720039'});

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
