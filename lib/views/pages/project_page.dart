import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Projects',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 13, 168, 203), // Màu xanh mới
            ),
          ),
          const Divider(thickness: 2, color: Color.fromARGB(255, 13, 168, 203)),

          const SizedBox(height: 10), // Khoảng cách

          Expanded(
            child: ListView(
              children: [
                _buildProjectCard(
                  Icons.analytics,
                  'Coffee Sentiment Analysis',
                  'An AI-based sentiment analysis system for coffee reviews using PhoBERT.',
                ),
                _buildProjectCard(
                  Icons.shopping_cart,
                  'Jewelry E-commerce Website',
                  'A full-stack e-commerce website for jewelry with real-time product updates.',
                ),
                _buildProjectCard(
                  Icons.recycling,
                  'EcoCycle - Plastic Bottle Donation App',
                  'A mobile app that encourages users to donate used plastic bottles for rewards.',
                ),
                _buildProjectCard(
                  Icons.book,
                  'University Research Management System',
                  'A system to manage research projects and publications for students and faculty.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(IconData icon, String title, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Color.fromARGB(255, 13, 168, 203), size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
