void default_parameter(String name, int nim, [String kelas = 'unknow']) {
  print("Namaku $name. NIM ku $nim, Kelasku $kelas");
}

void named_paramater({String? firstName, String? lastName}) {
  print('Hello, $firstName ${lastName ?? ''}');
}

void optional_position_param(String firstName, [String? lastName]) {
  print('Hello, $firstName ${lastName ?? ''}');
}

void positional_paramter(String firstName, String lastName) {
  print('Hello, $firstName $lastName');
}

void menyapa() {
  print('Hello, Alvina!');
}

var outerVariable = "I'm outside!";

void outerFunctionlLexical() {
  var middleVariable = "I'm in the middle!";
  
  void innerFunction() {
    print(outerVariable);   // Dapat mengakses variabel dari fungsi luar
    print(middleVariable);  // Dapat mengakses variabel dari fungsi di atasnya
  }

  innerFunction();
}

Function makeAdderLexicalClosure(int addBy) {
  return (int number) {
    return number + addBy; // addBy ditangkap dari ruang lingkup luar
  };
}

Map<String, dynamic> fetchPersonDetails() {
  return {
    'name': 'Alvina Marcy',
    'age': 20,
    'job': 'Web Developer'
  };
}

void main() {
  var personDetails = fetchPersonDetails();
  print('Name: ${personDetails['name']}');
  print('Age: ${personDetails['age']}');
  print('Job: ${personDetails['job']}');
}



