// import 'package:club_app/EVENTS/add_event.dart';
// import 'package:club_app/EVENTS/event_screen.dart';
// import 'package:club_app/GD/gd_screen.dart';
// import 'package:club_app/MEMBERS/add_member.dart';
// import 'package:club_app/MEMBERS/members_list.dart';
// import 'package:club_app/document_page.dart';
// import 'package:club_app/gallery.dart';
// import 'package:club_app/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:club_app/MEMBERS/add_member.dart';

// class RootScreen extends StatefulWidget {
//   const RootScreen({super.key});

//   @override
//   State<RootScreen> createState() => _RootScreenState();
// }

// class _RootScreenState extends State<RootScreen> {
//   int _index = 0;

//   // explicitly typed as List<Widget> and HomePage gets the callback
//   late final List<Widget> _pages = [
//     HomePage(onNavigate: (int newIndex) {
//       setState(() => _index = newIndex);
//     }),
//    // const MembersPage(),
//     const EventsPage(),
//     const GDSPage(),
//     const DocumentsPage(),
//     const GalleryPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_index],
//       bottomNavigationBar: NavigationBar(
//         selectedIndex: _index,
//         onDestinationSelected: (i) => setState(() => _index = i),
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
//           NavigationDestination(icon: Icon(Icons.people), label: 'Members'),
//           NavigationDestination(icon: Icon(Icons.event), label: 'Events'),
//           NavigationDestination(icon: Icon(Icons.forum), label: 'GDS'),
//           NavigationDestination(icon: Icon(Icons.insert_drive_file), label: 'Docs'),
//           NavigationDestination(icon: Icon(Icons.photo_library), label: 'Gallery'),
//         ],
//       ),
//       // floatingActionButton: _index == 1
//       //     ? FloatingActionButton(onPressed: () => _showAddMember(context), child: const Icon(Icons.add))
//       //     : _index == 2
//       //         ? FloatingActionButton(onPressed: () => _showAddEvent(context), child: const Icon(Icons.add))
//       //         : null,
//     );
//   }

//   // void _showAddMember(BuildContext context) =>
//   //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddMemberScreen()));

//   void _showAddEvent(BuildContext context) =>
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddEventScreen()));
// }