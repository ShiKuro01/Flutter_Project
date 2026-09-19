import 'package:flutter/material.dart';
import '../models/catalog_item.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CatalogItem> items = [
      CatalogItem(
        name: 'JOHN DOE',
        role: 'SOFTWARE ENGINEER',
        description: 'Experienced in Flutter and Dart development. Loves building beautiful UI.',
      ),
      CatalogItem(
        name: 'JANE SMITH',
        role: 'UI/UX DESIGNER',
        description: 'Focuses on creating intuitive and user-friendly interfaces.',
      ),
      CatalogItem(
        name: 'BOB JOHNSON',
        role: 'PROJECT MANAGER',
        description: 'Ensures projects are delivered on time and meet quality standards.',
      ),
    ];

    // Pastel colors for the cards
    final List<Color> cardColors = [
      const Color(0xFFFFB3BA), // Pastel Pink
      const Color(0xFFBAFFC9), // Pastel Green
      const Color(0xFFFFDFBA), // Pastel Orange
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('KATALOG'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final color = cardColors[index % cardColors.length];
          return Container(
            margin: const EdgeInsets.only(bottom: 24.0),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.black, width: 3),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(6, 6),
                  blurRadius: 0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 3),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.person, color: Colors.black, size: 36),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name, 
                              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 22, letterSpacing: 1),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item.role,
                              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(item: item, backgroundColor: color),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF88AAEE), // Primary Pastel Blue
                        foregroundColor: Colors.black,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: const Text(
                        'LIHAT DETAIL',
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18, letterSpacing: 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
