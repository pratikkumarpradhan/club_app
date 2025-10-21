// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:club_app/EVENTS/events.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class EventsPage extends StatelessWidget {
//   const EventsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(12),
//         child: StreamBuilder<QuerySnapshot>(
//           stream: FirebaseFirestore.instance.collection('events').orderBy('date', descending: true).snapshots(),
//           builder: (context, snap) {
//             if (!snap.hasData) return const Center(child: CircularProgressIndicator());
//             final docs = snap.data!.docs.map((d) => ClubEvent.fromMap(d.data() as Map<String, dynamic>, d.id)).toList();
//             if (docs.isEmpty) return const Center(child: Text('No events yet'));
//             return ListView.builder(itemCount: docs.length, itemBuilder: (context, i) {
//               final e = docs[i];
//               return ListTile(title: Text(e.title), subtitle: Text('${e.date.toLocal()}'.split(' ')[0]), trailing: Text(e.venue), onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => EventDetailScreen(event: e))));
//             });
//           },
//         ),
//       ),
//     );
//   }
// }

// class EventDetailScreen extends StatelessWidget {
//   final ClubEvent event;
//   const EventDetailScreen({super.key, required this.event});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text(event.title)), body: Padding(padding: const EdgeInsets.all(12), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Date: ${event.date.toLocal()}'.split(' ')[0]), const SizedBox(height: 8), Text('Venue: ${event.venue}'), const SizedBox(height: 12), Text(event.description), const SizedBox(height: 12), ElevatedButton(onPressed: () => _rsvp(context, event), child: const Text('RSVP'))])));
//   }

//   void _rsvp(BuildContext context, ClubEvent e) async {
//     final uid = FirebaseAuth.instance.currentUser?.uid ?? 'anonymous';
//     final doc = FirebaseFirestore.instance.collection('events').doc(e.id);
//     await doc.update({'participants': FieldValue.arrayUnion([uid])});
//     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('RSVP done')));
//   }
// }
