// class GDS { // Group Discussion / GDS session
//   final String id;
//   final String topic;
//   final DateTime date;
//   final String organizer;
//   final String summaryUrl; // link to minutes/doc

//   GDS({required this.id, required this.topic, required this.date, required this.organizer, required this.summaryUrl});

//   factory GDS.fromMap(Map<String, dynamic> m, String id) => GDS(
//         id: id,
//         topic: m['topic'] ?? '',
//         date: (m['date'] as Timestamp).toDate(),
//         organizer: m['organizer'] ?? '',
//         summaryUrl: m['summaryUrl'] ?? '',
//       );

//   Map<String, dynamic> toMap() => {
//         'topic': topic,
//         'date': Timestamp.fromDate(date),
//         'organizer': organizer,
//         'summaryUrl': summaryUrl,
//       };
// }