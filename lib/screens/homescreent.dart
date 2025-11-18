import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FA),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent, // optional
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          clipBehavior:
              Clip.hardEdge, // 👈 ensures the rounded effect is applied
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue.shade900,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today), label: "Schedule"),
              BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Test"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.support_agent_rounded), label: "Support"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🟦 Header
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hello, User!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlimH-52ei6mqDPohL-qaT0VuDdTK3B7dJZg&s"), // or NetworkImage
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Dropdowns
              Container(
                height: 60,
                width: screenWith,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 204, 210, 221)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildDropdown("Mock Test"),
                    const SizedBox(width: 1),
                    _buildDropdown("Category"),
                    const SizedBox(width: 1),
                    _buildDropdown("Year"),
                    const SizedBox(width: 1),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(119, 1, 39, 225)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      child: Center(
                        child: Text(
                          "Generate",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Card(
                color: const Color.fromARGB(255, 255, 254, 254),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //  Cards
                      const Text(
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          _buildDashboardCard(
                              "Mock Attempted", "26", "92% avg score",
                              icon: Icons.file_copy_outlined,
                              color: const Color.fromARGB(255, 225, 245, 225),
                              cirleavatercolor:
                                  const Color.fromARGB(255, 149, 193, 151)),
                          const SizedBox(width: 10),
                          _buildDashboardCard(
                              "Marks Downloads", "24", "15 this week",
                              icon: Icons.download,
                              color: const Color.fromARGB(255, 247, 219, 222),
                              cirleavatercolor:
                                  const Color.fromARGB(255, 233, 107, 18)),
                          const SizedBox(width: 10),
                          _buildDashboardCard(
                              "Performance Score", "88%", "+5% improvement",
                              icon: Icons.show_chart,
                              color: const Color.fromARGB(255, 243, 220, 247),
                              cirleavatercolor:
                                  const Color.fromARGB(255, 139, 33, 238)),
                        ],
                      ),
                      const SizedBox(height: 10),

                      //chart
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Progress ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      foreground: Paint()
                                        ..shader = const LinearGradient(
                                          colors: [
                                            Color.fromRGBO(62, 68, 74, 1),
                                            Color.fromARGB(255, 16, 139, 239)
                                          ],
                                        ).createShader(Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Analytics",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      foreground: Paint()
                                        ..shader = const LinearGradient(
                                          colors: [
                                            Color.fromARGB(255, 187, 18, 216),
                                            Colors.blue
                                          ],
                                          // begin: Alignment.topLeft,
                                          // end: Alignment.bottomRight,
                                        ).createShader(Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                            SizedBox(
                              height: 270,
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/chat.jpeg",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Choose Top Mock Test",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text("View all")
                ],
              ),
              // You can add mock test list here
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(String label) {
    return Expanded(
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            padding: EdgeInsets.symmetric(horizontal: 0),
            value: label,
            items: [label].map((e) {
              return DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: TextStyle(fontSize: 11),
                  ));
            }).toList(),
            onChanged: (_) {},
            icon: const Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardCard(String title, String value, String subtext,
      {IconData? icon, required Color color, required Color cirleavatercolor}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 5, bottom: 5, top: 5, right: 5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 10, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        value,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (icon != null)
                      Container(
                        width: 25,
                        child: CircleAvatar(
                            backgroundColor: cirleavatercolor,
                            radius: 15,
                            child: Icon(icon, size: 23, color: Colors.white)),
                      )
                    else
                      const Icon(Icons.insert_drive_file,
                          size: 28, color: Colors.black54),
                  ],
                )
              ],
            ),
            Text(
              subtext,
              style: const TextStyle(fontSize: 10, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
