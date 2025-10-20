class Member {
  final String id;
  final String name;
  final String imageUrl;
  final String role; // e.g., Secretary, Member, President
  final int year;

  Member({required this.id, required this.name, required this.imageUrl, required this.role, required this.year});

  factory Member.fromMap(Map<String, dynamic> m, String id) => Member(
        id: id,
        name: m['name'] ?? '',
        imageUrl: m['imageUrl'] ?? '',
        role: m['role'] ?? '',
        year: (m['year'] ?? 1) as int,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'imageUrl': imageUrl,
        'role': role,
        'year': year,
      };
}