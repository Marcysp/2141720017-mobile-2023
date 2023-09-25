void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama' : 'Alvina Marcy S.P.',
    'NIM' : '2141720017'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'nama' : 'Alvina Marcy S.P.',
    'NIM' : '2141720017'
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  mhs1['nama'] = 'Alvina Marcy S.P.';
  mhs1['NIM'] = '2141720017';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1['nama'] = 'Alvina Marcy S.P.';
  mhs1['NIM'] = '2141720017';

  print('$gifts \n');
  print('$nobleGases \n');
  print('$mhs1 \n');
  print('$mhs2 \n');
}
