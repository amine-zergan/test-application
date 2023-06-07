// ignore_for_file: public_member_api_docs, sort_constructors_first
class Region {
  final int id;
  final String name;
  final List<String> zone;
  Region({
    required this.id,
    required this.name,
    required this.zone,
  });
}

List<Region> regionData = [
  Region(
    id: 1,
    name: "Manouba",
    zone: [
      "Borj elamri",
      "Mournagiya",
      "Tebourba",
      "batan",
      "sanheja",
      "Oued Elil",
    ],
  ),
  Region(
    id: 2,
    name: "Ben Arous",
    zone: [
      "Hamem lefn",
      "fouchena",
      "Mhamdiya",
      "Mourouj",
      "Rades",
      "Boumhal",
    ],
  ),
];
