// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloudinary_public/cloudinary_public.dart';
// import 'package:club_app/MEMBERS/mebmers.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class AddMemberScreen extends StatefulWidget {
//   const AddMemberScreen({super.key});

//   @override
//   State<AddMemberScreen> createState() => _AddMemberScreenState();
// }

// class _AddMemberScreenState extends State<AddMemberScreen> {
//   final _nameCtrl = TextEditingController();
//   final _roleCtrl = TextEditingController();
//   final _yearCtrl = TextEditingController();
//   File? _image;
//   bool _loading = false;

//   final _cloudinary = CloudinaryPublic('dyp8u0ka1', 'aeie_football_new', cache: false);

//   Future<void> _pickImage() async {
//     final img = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 75);
//     if (img == null) return;
//     setState(() => _image = File(img.path));
//   }

//   Future<String> _uploadToCloudinary(File file) async {
//     final res = await _cloudinary.uploadFile(CloudinaryFile.fromFile(file.path, folder: 'members'));
//     return res.secureUrl;
//   }

//   Future<void> _save() async {
//     if (_nameCtrl.text.trim().isEmpty) return;
//     setState(() => _loading = true);
//     try {
//       String imageUrl = '';
//       if (_image != null) imageUrl = await _uploadToCloudinary(_image!);
//       final doc = FirebaseFirestore.instance.collection('members').doc();
//       final member = Member(id: doc.id, name: _nameCtrl.text.trim(), imageUrl: imageUrl, role: _roleCtrl.text.trim(), year: int.tryParse(_yearCtrl.text) ?? 1);
//       await doc.set(member.toMap());
//       if (mounted) Navigator.of(context).pop();
//     } catch (e) {
//       debugPrint('Error saving member: $e');
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
//     } finally {
//       setState(() => _loading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add Member')),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(children: [
//           GestureDetector(onTap: _pickImage, child: CircleAvatar(radius: 50, child: _image == null ? const Icon(Icons.add_a_photo) : ClipOval(child: Image.file(_image!, width: 100, height: 100, fit: BoxFit.cover)))),
//           const SizedBox(height: 12),
//           TextField(controller: _nameCtrl, decoration: const InputDecoration(labelText: 'Name')),
//           TextField(controller: _roleCtrl, decoration: const InputDecoration(labelText: 'Role (e.g., Secretary)')),
//           TextField(controller: _yearCtrl, decoration: const InputDecoration(labelText: 'Year'), keyboardType: TextInputType.number),
//           const SizedBox(height: 16),
//           ElevatedButton(onPressed: _loading ? null : _save, child: _loading ? const CircularProgressIndicator() : const Text('Save'))
//         ]),
//       ),
//     );
//   }
// }
