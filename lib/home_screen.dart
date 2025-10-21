// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';

// // class HomePage extends StatelessWidget {
// //   final void Function(int)? onNavigate; // <- callback from RootScreen

// //   const HomePage({super.key, this.onNavigate});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: SingleChildScrollView(
// //         padding: const EdgeInsets.all(16),
// //         child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// //           _buildWelcome(context),
// //           const SizedBox(height: 16),
// //           _buildQuickActions(context),
// //           const SizedBox(height: 24),
// //           const AnnouncementsWidget(),
// //         ]),
// //       ),
// //     );
// //   }

// //   Widget _buildWelcome(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.all(20),
// //       width: double.infinity,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(16),
// //         gradient: LinearGradient(
// //           colors: [
// //             Theme.of(context).colorScheme.primary.withOpacity(0.85),
// //             Theme.of(context).colorScheme.secondary.withOpacity(0.6)
// //           ]
// //         )
// //       ),
// //       child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// //         Text('AEIE Departmental Club', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white)),
// //         const SizedBox(height: 8),
// //         Text('We organize events, GDS sessions, workshops and more', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70)),
// //       ]),
// //     );
// //   }

// //   Widget _buildQuickActions(BuildContext context) {
// //     return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
// //       _quickButton(context, Icons.people, 'Members'),
// //       _quickButton(context, Icons.event, 'Events'),
// //       _quickButton(context, Icons.forum, 'GDS'),
// //       _quickButton(context, Icons.insert_drive_file, 'Docs'),
// //     ]);
// //   }

// //   Widget _quickButton(BuildContext context, IconData icon, String label) {
// //     return GestureDetector(
// //       onTap: () {
// //         // Use the callback instead of accessing RootScreen's private state
// //         final map = {'Members': 1, 'Events': 2, 'GDS': 3, 'Docs': 4};
// //         final idx = map[label];
// //         if (idx != null) {
// //           onNavigate?.call(idx);
// //         }
// //       },
// //       child: Column(children: [CircleAvatar(radius: 28, child: Icon(icon, size: 28)), const SizedBox(height: 8), Text(label)]),
// //     );
// //   }
// // }

// // class AnnouncementsWidget extends StatelessWidget {
// //   const AnnouncementsWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder<QuerySnapshot>(
// //       stream: FirebaseFirestore.instance.collection('announcements').orderBy('createdAt', descending: true).limit(1).snapshots(),
// //       builder: (context, snap) {
// //         if (snap.hasError) return const SizedBox();
// //         if (!snap.hasData) return const SizedBox();
// //         final docs = snap.data!.docs;
// //         if (docs.isEmpty) return const SizedBox();
// //         final data = docs.first.data() as Map<String, dynamic>;
// //         return Container(
// //           padding: const EdgeInsets.all(12),
// //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
// //           child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// //             Text('Latest Announcement', style: Theme.of(context).textTheme.titleSmall),
// //             const SizedBox(height: 8),
// //             Text(data['text'] ?? '', style: Theme.of(context).textTheme.bodyMedium)
// //           ])
// //         );
// //       },
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatelessWidget {
//   final Function(int)? onNavigate;
//   const HomePage({super.key, this.onNavigate});

//   @override
//   Widget build(BuildContext context) {
//     final List<_HomeOption> options = [
//       _HomeOption(icon: Icons.people, label: 'Members', color: Colors.teal, index: 1),
//       _HomeOption(icon: Icons.event, label: 'Events', color: Colors.orange, index: 2),
//       _HomeOption(icon: Icons.forum, label: 'GDs', color: Colors.indigo, index: 3),
//       _HomeOption(icon: Icons.insert_drive_file, label: 'Documents', color: Colors.purple, index: 4),
//       _HomeOption(icon: Icons.photo_library, label: 'Gallery', color: Colors.pink, index: 5),
//     ];

//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         title: Text('AEIE Departmental Club',
//             style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
//         centerTitle: true,
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: GridView.builder(
//           itemCount: options.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 16,
//             crossAxisSpacing: 16,
//           ),
//           itemBuilder: (context, index) {
//             final opt = options[index];
//             return GestureDetector(
//               onTap: () => onNavigate?.call(opt.index),
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 decoration: BoxDecoration(
//                   color: opt.color.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(color: opt.color.withOpacity(0.3)),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(opt.icon, size: 48, color: opt.color),
//                     const SizedBox(height: 10),
//                     Text(
//                       opt.label,
//                       style: GoogleFonts.poppins(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: opt.color.shade700,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class _HomeOption {
//   final IconData icon;
//   final String label;
//   final MaterialColor color;
//   final int index;
//   _HomeOption({
//     required this.icon,
//     required this.label,
//     required this.color,
//     required this.index,
//   });
// }