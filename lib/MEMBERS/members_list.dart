// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:club_app/MEMBERS/mebmers.dart';
// import 'package:flutter/material.dart';
// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

// class MembersPage extends StatefulWidget {
//   const MembersPage({super.key});

//   @override
//   State<MembersPage> createState() => _MembersPageState();
// }

// class _MembersPageState extends State<MembersPage> {
//   Future<void> _refresh() async {
//     await Future.delayed(const Duration(milliseconds: 400));
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: LiquidPullToRefresh(
//         onRefresh: _refresh,
//         child: Padding(
//           padding: const EdgeInsets.all(12),
//           child: StreamBuilder<QuerySnapshot>(
//             stream: FirebaseFirestore.instance.collection('members').orderBy('name').snapshots(),
//             builder: (context, snap) {
//               if (snap.hasError) return Center(child: Text('Error: ${snap.error}'));
//               if (!snap.hasData) return const Center(child: CircularProgressIndicator());
//               final docs = snap.data!.docs;
//               if (docs.isEmpty) return const Center(child: Text('No members yet'));
//               final members = docs.map((d) => Member.fromMap(d.data() as Map<String, dynamic>, d.id)).toList();
//               return GridView.builder(
//                 physics: const AlwaysScrollableScrollPhysics(),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.85, crossAxisSpacing: 12, mainAxisSpacing: 12),
//                 itemCount: members.length,
//                 itemBuilder: (context, i) => _memberCard(context, members[i]),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _memberCard(BuildContext context, Member m) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Column(children: [
//         Expanded(child: ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(12)), child: m.imageUrl.isEmpty ? Container(color: Colors.grey[300], child: const Center(child: Icon(Icons.person, size: 48))) :
//          CachedNetworkImage(imageUrl: m.imageUrl, fit: BoxFit.cover, width: double.infinity))),
//         Padding(padding: const EdgeInsets.all(8.0), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(m.name, style: const TextStyle(fontWeight: FontWeight.bold)), Text('${m.role} • Year ${m.year}')]))
//       ]),
//     );
//   }
// }
