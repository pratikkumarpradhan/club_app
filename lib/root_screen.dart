// class RootScreen extends StatefulWidget {
//   const RootScreen({super.key});

//   @override
//   State<RootScreen> createState() => _RootScreenState();
// }

// class _RootScreenState extends State<RootScreen> {
//   int _index = 0;

//   final _pages = [
//     const HomePage(),
//     const MembersPage(),
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
//       floatingActionButton: _index == 1
//           ? FloatingActionButton(onPressed: () => _showAddMember(context), child: const Icon(Icons.add))
//           : _index == 2
//               ? FloatingActionButton(onPressed: () => _showAddEvent(context), child: const Icon(Icons.add))
//               : null,
//     );
//   }

//   void _showAddMember(BuildContext context) => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AddMemberScreen()));
//   void _showAddEvent(BuildContext context) => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const AddEventScreen()));
// }