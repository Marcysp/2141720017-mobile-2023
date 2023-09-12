void main() {
  int bil;
  int count = 0;
  for (int i = 1; i <= 201; i++) {
    bil = 0;
    for (int j = 1; j <= i; j++) {
      if (i%j == 0) {
        bil= bil+1;
      }
    }
    if (bil==2) {
      print("Nama : Alvina Marcy S.P.");
      print("NIM : 2141720017");
      print("Bilangan Prima : $i");
      count++;
    }
  }
  print("total ada $count bilangan prima");
}