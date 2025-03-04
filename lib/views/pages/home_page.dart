import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          // Background Shape
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 1000,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFF),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(50),
                //   bottomRight: Radius.circular(50),
                // ),
              ),
            ),
          ),

          // Content
          Column(
            children: [
              const SizedBox(height: 30),

              // Profile Image with Clip Shape
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipPath(
                  clipper: ProfileClipper(),
                  child: Image.asset(
                    'assets/images/hg.JPG',
                    height: 380,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Greeting and Description
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi There!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "It's Giang Huynh .",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 130.0,
                      color: Color(0xFF222222),
                    ),
                    // SizedBox(height: 10),
                    // Text(
                    //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    //   'Sed sem ante, sollicitudin et elementum quis, ultrices vitae dolor.',
                    //   style: TextStyle(fontSize: 14, color: Colors.black87),
                    // ),
                  ],
                ),
              ),

              // Social Icons
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Facebook
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color.fromARGB(255, 4, 78, 105),
                          child: Icon(
                            Icons.phone,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '0971923550',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Facebook
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color.fromARGB(255, 4, 78, 105),
                          child: Icon(
                            Icons.location_on,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Ho Chi Minh City',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Facebook
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color.fromARGB(255, 4, 78, 105),
                          child: Icon(
                            Icons.info_rounded,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Github: Ditconhanhphuc',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Facebook
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color.fromARGB(255, 4, 78, 105),
                          child: Icon(
                            Icons.email,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'huynhhagiang065@gmail.com',
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Custom Clipper for Profile Image
class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
