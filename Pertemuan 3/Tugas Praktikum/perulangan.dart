void main() {
  String namaLengkap = "Keenan Aryasatya";
  String nim = "244107060124";

  print("--- Program Pencari Bilangan Prima (0 - 201) ---");

  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan Prima: $i");
      print("Nama: $namaLengkap | NIM: $nim");
      print("---------------------------------------");
    }
  }
}

bool isPrime(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
