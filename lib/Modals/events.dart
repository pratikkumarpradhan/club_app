// class ClubEvent {
//   final String id;
//   final String title;
//   final String description;
//   final DateTime date;
//   final String venue;
//   final List<String> participants; // user ids

//   ClubEvent({required this.id, required this.title, required this.description, required this.date, required this.venue, required this.participants});

//   factory ClubEvent.fromMap(Map<String, dynamic> m, String id) => ClubEvent(
//         id: id,
//         title: m['title'] ?? '',
//         description: m['description'] ?? '',
//         date: (m['date'] as Timestamp).toDate(),
//         venue: m['venue'] ?? '',
//         participants: List<String>.from(m['participants'] ?? []),
//       );

//   Map<String, dynamic> toMap() => {
//         'title': title,
//         'description': description,
//         'date': Timestamp.fromDate(date),
//         'venue': venue,
//         'participants': participants,
//       };
// }