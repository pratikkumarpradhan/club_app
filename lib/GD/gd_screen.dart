// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:club_app/GD/GD.dart';
// import 'package:flutter/material.dart';

// class GDSPage extends StatelessWidget {
//   const GDSPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Padding(padding: const EdgeInsets.all(12), child: StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('gds').orderBy('date', descending: true).snapshots(), builder: (context, snap) {
//       if (!snap.hasData) return const Center(child: CircularProgressIndicator());
//       final docs = snap.data!.docs.map((d) => GDS.fromMap(d.data() as Map<String, dynamic>, d.id)).toList();
//       if (docs.isEmpty) return const Center(child: Text('No GDS sessions yet'));
//       return ListView.builder(itemCount: docs.length, itemBuilder: (context, i) {
//         final g = docs[i];
//         return ListTile(title: Text(g.topic), subtitle: Text('${g.date.toLocal()}'.split(' ')[0]), trailing: Text(g.organizer), onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => GDSDetailScreen(gds: g))));
//       });
//     })),);
//   }
// }

// class GDSDetailScreen extends StatelessWidget {
//   final GDS gds;
//   const GDSDetailScreen({super.key, required this.gds});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text(gds.topic)), body: Padding(padding: const EdgeInsets.all(12), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Date: ${gds.date.toLocal()}'.split(' ')[0]), const SizedBox(height: 8), Text('Organizer: ${gds.organizer}'), const SizedBox(height: 12), gds.summaryUrl.isEmpty ? const Text('No summary uploaded') : ElevatedButton(onPressed: () {/* open url */}, child: const Text('Open Summary'))])));
//   }
// }