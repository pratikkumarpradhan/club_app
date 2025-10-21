// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class DocumentsPage extends StatelessWidget {
//   const DocumentsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Padding(padding: const EdgeInsets.all(12), child: StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('documents').orderBy('createdAt', descending: true).snapshots(), builder: (context, snap) {
//       if (!snap.hasData) return const Center(child: CircularProgressIndicator());
//       final docs = snap.data!.docs;
//       if (docs.isEmpty) return const Center(child: Text('No documents'));
//       return ListView.builder(itemCount: docs.length, itemBuilder: (context, i) {
//         final d = docs[i].data() as Map<String, dynamic>;
//         return ListTile(title: Text(d['title'] ?? 'Untitled'), subtitle: Text(d['type'] ?? ''), trailing: IconButton(icon: const Icon(Icons.open_in_new), onPressed: () {/* open d['url'] */}));
//       });
//     })),);
//   }
// }