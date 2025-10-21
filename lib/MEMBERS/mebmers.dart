// class Member {
//   final String id;
//   final String name;
//   final String imageUrl;
//   final String role;
//   final int year;

//   Member({
//     required this.id,
//     required this.name,
//     required this.imageUrl,
//     required this.role,
//     required this.year,
//   });

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'imageUrl': imageUrl,
//       'role': role,
//       'year': year,
//     };
//   }

//   factory Member.fromMap(Map<String, dynamic> map, String id) {
//     return Member(
//       id: id,
//       name: map['name'] ?? '',
//       imageUrl: map['imageUrl'] ?? '',
//       role: map['role'] ?? '',
//       year: map['year'] ?? 1,
//     );
//   }
// }