// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:club_app/EVENTS/events.dart';
// import 'package:flutter/material.dart';

// class AddEventScreen extends StatefulWidget {
//   const AddEventScreen({super.key});

//   @override
//   State<AddEventScreen> createState() => _AddEventScreenState();
// }

// class _AddEventScreenState extends State<AddEventScreen> {
//   final _title = TextEditingController();
//   final _desc = TextEditingController();
//   final _venue = TextEditingController();
//   DateTime _date = DateTime.now();
//   bool _loading = false;

//   Future<void> _pickDate() async {
//     final d = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime(2020), lastDate: DateTime(2100));
//     if (d != null) setState(() => _date = d);
//   }

//   Future<void> _save() async {
//     if (_title.text.trim().isEmpty) return;
//     setState(() => _loading = true);
//     try {
//       final doc = FirebaseFirestore.instance.collection('events').doc();
//       final ev = ClubEvent(id: doc.id, title: _title.text.trim(), description: _desc.text.trim(), date: _date, venue: _venue.text.trim(), participants: []);
//       await doc.set(ev.toMap());
//       if (mounted) Navigator.of(context).pop();
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
//     } finally {
//       setState(() => _loading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: const Text('Add Event')), body: Padding(padding: const EdgeInsets.all(12), child: Column(children: [TextField(controller: _title, decoration: const InputDecoration(labelText: 'Title')), TextField(controller: _desc, decoration: const InputDecoration(labelText: 'Description')), TextField(controller: _venue, decoration: const InputDecoration(labelText: 'Venue')), const SizedBox(height: 8), Row(children: [Text('${_date.toLocal()}'.split(' ')[0]), const SizedBox(width: 12), ElevatedButton(onPressed: _pickDate, child: const Text('Pick Date'))]), const SizedBox(height: 12), ElevatedButton(onPressed: _loading ? null : _save, child: _loading ? const CircularProgressIndicator() : const Text('Save'))])));
//   }
// }
