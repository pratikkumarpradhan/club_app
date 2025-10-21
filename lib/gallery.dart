// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class GalleryPage extends StatelessWidget {
//   const GalleryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: StreamBuilder<QuerySnapshot>(stream: FirebaseFirestore.instance.collection('gallery').orderBy('createdAt', descending: true).snapshots(), builder: (context, snap) {
//       if (!snap.hasData) return const Center(child: CircularProgressIndicator());
//       final docs = snap.data!.docs;
//       if (docs.isEmpty) return const Center(child: Text('Gallery empty'));
//       final urls = docs.map((d) => (d.data() as Map<String, dynamic>)['url'] as String).toList();
//       return GridView.builder(padding: const EdgeInsets.all(12), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12), itemCount: urls.length, itemBuilder: (context, i) => GestureDetector(onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => FullImageScreen(url: urls[i]))), child: CachedNetworkImage(imageUrl: urls[i], fit: BoxFit.cover)));
//     }),);
//   }
// }

// class FullImageScreen extends StatelessWidget {
//   final String url;
//   const FullImageScreen({super.key, required this.url});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(), body: Center(child: CachedNetworkImage(imageUrl: url)));
//   }
// }