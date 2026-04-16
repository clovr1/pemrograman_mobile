void main() {
  int counter = 0;

  print("--- Hasil While Loop (0 - 32) ---");
  while (counter < 33) {
    print(counter);
    counter++;
  }

  print("\n--- Hasil Do-While Loop (33 - 76) ---");
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
