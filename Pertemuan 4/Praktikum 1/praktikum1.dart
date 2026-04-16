void main() {
  final List<String?> list = List.filled(5, null);

  list[1] = "Keenan Aryasatya";
  list[2] = "244107060124";

  print(list);
  print("Panjang List: ${list.length}");
  print("Isi Indeks 1: ${list[1]}");
  print("Isi Indeks 2: ${list[2]}");
}
