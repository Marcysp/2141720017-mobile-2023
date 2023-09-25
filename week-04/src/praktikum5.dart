void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Praktikum 5 langkah 4
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var num = (14, 03);
  num = tukar(num);
  print(record);
  print(num);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  
  mahasiswa = (
    'Alvina Marcy',
    2141720017,
  );
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

// Praktikum 5 langkah 3
  // print('----------------------');
  // print('Praktikum 5 Langkah 3');
  // print('----------------------');
  
// diletakkan diluar main
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
