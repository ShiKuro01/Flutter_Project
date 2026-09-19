import 'package:flutter/material.dart';
import '../models/catalog_item.dart';

class DetailScreen extends StatefulWidget {
  final CatalogItem item;
  final Color backgroundColor;

  const DetailScreen({super.key, required this.item, this.backgroundColor = const Color(0xFFFDFBF7)});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isFollowed = false;

  void _toggleFollow() {
    setState(() {
      _isFollowed = !_isFollowed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        title: const Text('DETAIL PROFIL'),
        backgroundColor: widget.backgroundColor,
        elevation: 0,
        shape: const Border(bottom: BorderSide(color: Colors.black, width: 3)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 3),
                boxShadow: const [
                  BoxShadow(color: Colors.black, offset: Offset(6, 6), blurRadius: 0),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF88AAEE), // Primary Pastel Blue
                      border: Border.all(color: Colors.black, width: 3),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, size: 60, color: Colors.black),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 28, letterSpacing: 1.5),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(0), // Brutalism box
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      widget.item.role,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 3),
                boxShadow: const [
                  BoxShadow(color: Colors.black, offset: Offset(6, 6), blurRadius: 0),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'DESKRIPSI',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 1),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.item.description,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 1.5),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                onPressed: _toggleFollow,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isFollowed ? const Color(0xFFBAFFC9) : const Color(0xFF88AAEE), // Green when followed, Primary Blue when not
                  foregroundColor: Colors.black,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(_isFollowed ? Icons.check_box : Icons.add_box, size: 28),
                    const SizedBox(width: 12),
                    Text(
                      _isFollowed ? 'MENGIKUTI' : 'IKUTI SEKARANG',
                      style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 1),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
