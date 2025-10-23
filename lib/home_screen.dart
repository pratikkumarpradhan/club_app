import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClubHomePage extends StatelessWidget {
  const ClubHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      extendBodyBehindAppBar: true,
      appBar: _buildBlurAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _heroSection(),
            _aboutSection(),
            _activitiesSection(),
            _eventsSection(),
            _gallerySection(),
            _testimonialsSection(),
            _contactSection(),
            const SizedBox(height: 40),
            _footer(),
          ],
        ),
      ),
    );
  }

  // ---------- APPBAR WITH BLUR ----------
  PreferredSizeWidget _buildBlurAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(70),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.black.withOpacity(0.3),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Row(
                children: const [
                  Icon(Icons.sports_soccer, color: Colors.white, size: 28),
                  SizedBox(width: 10),
                  Text("Elite Sports Club",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              ),
              actions: [
                _navItem("Home"),
                _navItem("About"),
                _navItem("Activities"),
                _navItem("Events"),
                _navItem("Gallery"),
                _navItem("Contact"),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ---------- NAV ITEM ----------
  Widget _navItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: GoogleFonts.poppins(
            color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  // ---------- HERO SECTION ----------
  Widget _heroSection() {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1607344645866-009c320b63e0"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Elite Sports Club",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.6),
                        offset: const Offset(2, 2))
                  ]),
            ),
            const SizedBox(height: 20),
            Text(
              "Where Passion Meets Performance",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20, color: Colors.white70, height: 1.5),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: Text(
                "Join the Club",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ---------- ABOUT SECTION ----------
  Widget _aboutSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: Column(
        children: [
          Text(
            "About Our Club",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            "Elite Sports Club is a premier community that brings together athletes, "
            "coaches, and sports enthusiasts. We focus on teamwork, skill development, "
            "and sportsmanship, creating a platform where passion turns into excellence.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: Colors.white70, fontSize: 16, height: 1.6),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _aboutCard("Mission", "Promote excellence & teamwork"),
              const SizedBox(width: 20),
              _aboutCard("Vision", "Build a strong sports community"),
              const SizedBox(width: 20),
              _aboutCard("Values", "Integrity, Passion, Performance"),
            ],
          )
        ],
      ),
    );
  }

  Widget _aboutCard(String title, String desc) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white24)),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }

  // ---------- ACTIVITIES SECTION ----------
  Widget _activitiesSection() {
    final activities = [
      {"title": "Football Training", "icon": Icons.sports_soccer},
      {"title": "Swimming", "icon": Icons.pool},
      {"title": "Yoga & Fitness", "icon": Icons.self_improvement},
      {"title": "Annual Championship", "icon": Icons.emoji_events},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 60),
      color: const Color(0xFF0F172A),
      child: Column(
        children: [
          Text(
            "Our Activities",
            style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: activities
                .map(
                  (a) => Container(
                    width: 180,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Column(
                      children: [
                        Icon(a['icon'] as IconData,
                            size: 50, color: Colors.blueAccent),
                        const SizedBox(height: 15),
                        Text(
                          "pomtik",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  // ---------- EVENTS SECTION ----------
  Widget _eventsSection() {
    final events = [
      {
        "title": "Summer Championship",
        "image":
            "https://images.unsplash.com/photo-1508609349937-5ec4ae374ebf",
      },
      {
        "title": "Training Camp 2025",
        "image":
            "https://images.unsplash.com/photo-1517649763962-0c623066013b",
      },
      {
        "title": "Annual Club Meet",
        "image":
            "https://images.unsplash.com/photo-1608452964555-9d83b8e9b42a",
      },
    ];

    return Container(
      color: const Color(0xFF1E293B),
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
      child: Column(
        children: [
          Text(
            "Upcoming Events",
            style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: events
                .map(
                  (e) => Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white24)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20)),
                          child: Image.network(
                            e['image']!,
                            height: 180,
                            width: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            e['title']!,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  // ---------- GALLERY SECTION ----------
  Widget _gallerySection() {
    final galleryImages = [
      "https://images.unsplash.com/photo-1526401485004-5c0c77f77df0",
      "https://images.unsplash.com/photo-1558579405-31e7b16e5c91",
      "https://images.unsplash.com/photo-1598970434795-0c54fe7c0642",
      "https://images.unsplash.com/photo-1604147706286-6ff8be8e2de3",
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
      color: const Color(0xFF0F172A),
      child: Column(
        children: [
          Text(
            "Gallery",
            style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: galleryImages
                .map(
                  (img) => ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(img,
                        width: 250, height: 150, fit: BoxFit.cover),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  // ---------- TESTIMONIALS SECTION ----------
  Widget _testimonialsSection() {
    final testimonials = [
      {
        "name": "John Doe",
        "text":
            "Best club experience ever! The training and community are amazing."
      },
      {
        "name": "Jane Smith",
        "text":
            "I improved my skills and met amazing people. Highly recommended!"
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 50),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
        ),
      ),
      child: Column(
        children: [
          Text(
            "Testimonials",
            style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: testimonials
                .map(
                  (t) => Container(
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white24)),
                    child: Column(
                      children: [
                        const Icon(Icons.person,
                            size: 50, color: Colors.blueAccent),
                        const SizedBox(height: 15),
                        Text(
                          t['name']!,
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          t['text']!,
                          style: GoogleFonts.poppins(
                              color: Colors.white70, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }

  // ---------- CONTACT SECTION ----------
  Widget _contactSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 60),
      color: const Color(0xFF0F172A),
      child: Column(
        children: [
          Text(
            "Contact Us",
            style: GoogleFonts.poppins(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            "Have questions? Want to join? Drop your email below and we will reach out!",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 400,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  suffixIcon: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text("Subscribe"),
                  )),
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  // ---------- FOOTER ----------
  Widget _footer() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "© 2025 Elite Sports Club",
              style: GoogleFonts.poppins(color: Colors.white70),
            ),
            Row(
              children: const [
                Icon(Icons.facebook, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.facebook, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.facebook, color: Colors.white),
              ],
            )
          ],
        ),
      ),
    );
  }
}