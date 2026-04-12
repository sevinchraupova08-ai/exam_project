import 'package:exam_project/features/onboarding/presentation/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: provider.bottomIndex,
        onTap: provider.changeBottom,
        selectedItemColor: const Color(0xFF4A8AF4),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello,", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Text(
                        "Hi James",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xFF4A8AF4),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF4A8AF4), Color(0xFF6EA8FF)],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(radius: 22),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dr. Imran Syahir",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "General Doctor",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white70,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Sunday, 12 June",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white70,
                              size: 16,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "11:00 - 12:00 AM",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search doctor or health issue",
                    border: InputBorder.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (i) {
                  final icons = [
                    Icons.coronavirus,
                    Icons.person,
                    Icons.medication,
                    Icons.local_hospital,
                  ];
                  final titles = ["Covid 19", "Doctor", "Medicine", "Hospital"];

                  final selected = provider.selectedCategory == i;

                  return GestureDetector(
                    onTap: () => provider.selectCategory(i),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: selected
                                ? const Color(0xFF4A8AF4)
                                : Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Icon(
                            icons[i],
                            color: selected
                                ? Colors.white
                                : const Color(0xFF4A8AF4),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(titles[i], style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  );
                }),
              ),

              const SizedBox(height: 20),

          
              const Text(
                "Near Doctor",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  const CircleAvatar(radius: 22),
                  const SizedBox(width: 10),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Joseph Brostito",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Dental Specialist"),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Icon(Icons.star, size: 14, color: Colors.orange),
                            SizedBox(width: 4),
                            Text(
                              "4.8 (120 Reviews)",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Column(
                    children: const [
                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                      Text("1.2 KM", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
