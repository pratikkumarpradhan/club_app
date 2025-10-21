import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const AEIEDepartmentClubApp());
}

class AEIEDepartmentClubApp extends StatelessWidget {
  const AEIEDepartmentClubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AEIE Departmental Club',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const DepartmentClubHomePage(),
    );
  }
}

class DepartmentClubHomePage extends StatelessWidget {
  const DepartmentClubHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("AEIE Departmental Club"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _heroSection(),
            _aboutSection(),
            _eventSection(),
            _memberSection(),
            _gallerySection(),
            _contactSection(),
            _footer(),
          ],
        ),
      ),
    );
  }

  // 🔹 Hero / Banner Section
  Widget _heroSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.greenAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Icon(Icons.school, color: Colors.white, size: 80),
          const SizedBox(height: 12),
          Text(
            "Welcome to AEIE Departmental Club",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            "Where innovation meets teamwork and creativity.",
            style: GoogleFonts.poppins(color: Colors.white70, fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  // 🔹 About Section
  Widget _aboutSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle("About Us"),
          const SizedBox(height: 10),
          Text(
            "The AEIE Departmental Club is a student-driven organization aiming to bring "
            "together innovative minds from the Applied Electronics and Instrumentation Engineering Department. "
            "We conduct workshops, seminars, GDS (Group Discussions), and cultural events that enhance both "
            "technical and interpersonal skills of students.",
            style: GoogleFonts.poppins(fontSize: 15, color: Colors.black87),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  // 🔹 Events Section
  Widget _eventSection() {
    final events = [
      {"title": "Tech Symposium", "date": "Aug 2025"},
      {"title": "Cultural Fest", "date": "Jan 2025"},
      {"title": "Robotics Workshop", "date": "Mar 2025"},
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle("Recent Events"),
          const SizedBox(height: 10),
          ...events.map((e) => Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  leading: const Icon(Icons.event, color: Colors.teal),
                  title: Text(e["title"]!, style: const TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text("Date: ${e["date"]!}"),
                ),
              )),
        ],
      ),
    );
  }

  // 🔹 Members Section
  Widget _memberSection() {
    final members = [
      {"name": "Ashish Kumar", "role": "President"},
      {"name": "Vikram", "role": "Secretary"},
      {"name": "Rohan Das", "role": "Treasurer"},
    ];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle("Our Team"),
          const SizedBox(height: 10),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: members
                .map((m) => Container(
                      width: 160,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4, offset: const Offset(2, 2))
                        ],
                      ),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.teal,
                            child: Icon(Icons.person, color: Colors.white, size: 35),
                          ),
                          const SizedBox(height: 8),
                          Text(m["name"]!, style: const TextStyle(fontWeight: FontWeight.w600)),
                          Text(m["role"]!, style: const TextStyle(color: Colors.black54)),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  // 🔹 Gallery Section
  Widget _gallerySection() {
    final images = [
      "https://picsum.photos/200/200?1",
      "https://picsum.photos/200/200?2",
      "https://picsum.photos/200/200?3",
      "https://picsum.photos/200/200?4",
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle("Gallery"),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: images
                .map((img) => ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(img, height: 120, width: 120, fit: BoxFit.cover),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  // 🔹 Contact Section
  Widget _contactSection() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sectionTitle("Contact Us"),
          const SizedBox(height: 8),
          Row(children: const [
            Icon(Icons.email, color: Colors.teal),
            SizedBox(width: 8),
            Text("aeieclub@college.edu"),
          ]),
          const SizedBox(height: 6),
          Row(children: const [
            Icon(Icons.location_on, color: Colors.teal),
            SizedBox(width: 8),
            Expanded(child: Text("AEIE Department, College Campus, Bhubaneswar")),
          ]),
        ],
      ),
    );
  }

  // 🔹 Footer
  Widget _footer() {
    return Container(
      color: Colors.teal,
      padding: const EdgeInsets.all(12),
      child: const Center(
        child: Text(
          "© 2025 AEIE Departmental Club | All Rights Reserved",
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }

  // Helper for section title
  Widget _sectionTitle(String text) => Text(
        text,
        style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.teal[700]),
      );
}