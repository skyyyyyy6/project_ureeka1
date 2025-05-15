// import 'dart:io';
// ignore_for_file: unused_local_variable

int add(int a, int b){
  return a + b;
}

void main(){
  // 1. Jenis Variabel
  // var, final, const, late

  // var name = "Rich"; // Tipe datanya String
  // name = 123; // Error karena nama tipe datanya String, bukan untuk simpan angka

  // final int age; // Variabel hanya bisa diset sekali aja
  // age = 15; // Error karena variabel age itu final dan udah diset sebelumnya

  // const pi = 3.14; // Tipe datanya constant, tidak bisa kita set ulang nilainya
  // pi = 4.00; // Error karena constant tidak bisa direassign valuenya

  // late String description; // Tipe datanya late, 
  // description = "tsssssssssesting123";
  // print(description);

  // String? name = null; // Variabel ini bisa diset ke null

  // -Input Output
  // (Output)
  // print("Hello World");

  // (Input)
  // String? name = stdin.readLineSync();
  // print("Name: ");
  // print(name);

  // ------------------------------------------------------------------------------------

  // 2. Tipe Data
  // Angka: int, double
  int age = 10;
  double pi = 3.14;

  // String
  // String name = "Sky";
  // String desc = '''Halo
  // Halo
  // Halo''';
  // print(desc);

  // Boolean
  bool isTrue = true;
  bool isFalse = false;

  // Collection
  // -List
  // List<int> numbers = [5, 2, 3, 4, 5, 5, 6];
  // print(numbers);

  // -Sets ()
  // Set<int> nonDupes = {1, 2, 3, 4, 4, 5, 5};
  // print(nonDupes);

  // nonDupes.add(123);
  // nonDupes.remove(1);
  // print(nonDupes);

  // -Map => colection terdiri atas pairingan antara key dan value
  // key => index (cara kita access si value)
  // value => value di index itu
  // Map<String, String> phoneBook = {
  //   "Rich": "12345"
  // };

  // phoneBook["Ivan"] = "23456";
  // print(phoneBook["Ivan"]);

  // ------------------------------------------------------------------------------------

  // 3. Operator
  // Operator Arithmetics
  // int a = 5, b = 2;

  // print(a + b); // + => addition
  // print(a - b); // - => substraction
  // print(a * b); // * => multiplication
  // print(a / b); // / => division (decimal)
  // print(a ~/ b); // ~/ => division (integer, round ke bawah)
  // print(a % b); // % => modulo (reminder dari division)

  // Equality and Relational Operator
  // int a = 10, b = 10;
  // print(a == b); // == -> sama dengan
  // print(a != b); // != -> tidak sama dengan
  // print(a > b); // > -> lebih besar
  // print(a < b); // < -> lebih kecil
  // print(a >= b); // >= -> lebih besar sama dengan
  // print(a <= b); // <= -> lebih kecil sama dengan

  // Type Test Operator
  var test = 10;
  // print(test is String); // is => tipenya sama, dia hasilin true
  // print(test is! String); // is! (isnot) => tipenya beda, dia hasilin true

  // -Assignment Operator(Arithmatic)
  // int a = 5, b = 4;
  // a += b; // a = a + b
  // a -= b; // a = a - b
  // a *= b; // a = a * b
  // a ~/= b; // a = a ~/ b
  // a /= b; // a = a / b
  // a %= b; // a = a % b
  // print(a);

  // Assignment Operator(Nullable)
  // String? name = "Ivan";
  // name ??= "Rich"; // ??= -> check kalau variabel itu null, kalau null dia set ke value

  // print(name);

  //Logical Operator
  // bool a = true, b = false;

  // print(a && b); // && => operasi AND
  // print(a || b); // || => operasi OR
  // print(!b); // ! => operasi NOT

  // Selection
  // If else
  // int nilai = 79;

  // if(nilai >= 90){
  //   print("A");
  // }
  // else if(nilai >= 85){
  //   print("A-");
  // }
  // else if(nilai >= 80){
  //   print("B+");
  // }
  // else{
  //   print("B");
  // }

  // Switch statements
  // String weather = "Sunnya";
  // switch(weather){
  //   case "Sunny":

  // Repetition
  // for
  // for (int i = 0; i < 10; i++){
  //   print(i);
  // }

  // while
  // int i = 1;
  // while(i < 10){
  //   i++;
  // }

  // do-while
  // int i = 10;
  // do{
  //   print(i);
  //   i++;
  // } while (i < 10);

  // Test function
  print(add(1, 2));

}
