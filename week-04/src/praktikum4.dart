void main() {
 var list = [1,2,3, 2141720017] ;

//  Digunakan untuk menggabungkan 2 list
 var list2 = [0, ...list] ;
 print(list);
 print(list2);
 print(list2.length);

  //  Praktikum 4 langkah 3
  print('----------------------');
  print('Praktikum 4 Langkah 3');
  print('----------------------');
  var list1 = [1,2,null];
  print(list1);

  // operator "..." digunakan untuk menggabungkan list lain kedalamnya
  var list3 = [0, ...?list1, ...list];
  print(list3);
  print('Panjang list : ${list3.length}');

  // Praktikum 4 langkah 4
  print('----------------------');
  print('Praktikum 4 Langkah 4');
  print('----------------------');
  var promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  
  // Praktikum 4 langkah 5
  print('----------------------');
  print('Praktikum 4 Langkah 5');
  print('----------------------');
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  // Praktikum 4 langkah 5
  print('----------------------');
  print('Praktikum 4 Langkah 6');
  print('----------------------');
  var listOfInts = [1, 2, 3];
  // menggabungkan list lain dalam sebuah list menggunakan perulangan
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

