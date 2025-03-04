import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills & Technologies',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 13, 168, 203),
            ),
          ),
          const Divider(thickness: 2, color: Color.fromARGB(255, 13, 168, 203)),

          const SizedBox(height: 10), // Khoảng cách

          Expanded(
            child: ListView(
              children: [
                _buildSkillRow(Icons.code, 'Languages', 'Python, HTML, CSS, C++, JavaScript'),
                _buildSkillRow(Icons.storage, 'Databases', 'MySQL, MongoDB, Firebase'),
                _buildSkillRow(Icons.computer, 'Frameworks', 'React, Node.js, Flutter'),
                _buildSkillRow(Icons.build, 'Tools', 'Git, Docker, Postman'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillRow(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Color.fromARGB(255, 13, 168, 203), size: 28),
          const SizedBox(width: 12),
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
                Text(
                  content,
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
    );
  }
}
