void main() {
  final list = List<String?>.filled(5, null);
  list[1] = 'Alvina Marcy S.P.';
  list[2] = '2141720017';

  // jika panjang list=5 maka eksekusi akan di lanjutkan
  // namun jika panjang list!=5 maka eksekusi akan berhenti dan ditampilkan eror saan run
  assert(list.length == 5);

  print('panjang list : ${list.length}');
  print('Tampil list index ke-1 : ${list[1]}');
  print(list);
}
