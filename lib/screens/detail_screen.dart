import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi modelCandi;
  const DetailScreen({super.key, required this.modelCandi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // DETAIL HEADER
          Stack(
            children: [
              // Gambar Candi
              Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.asset(
                    modelCandi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Tombol Back
              Padding(
                padding: EdgeInsets.all(24),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple?.withValues(alpha: 0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          // DETAIL INFO
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Info Atas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      modelCandi.name,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                // Info Tengah
                // Info Bawah
              ],
            ),
          ),
          // DETAIL GALLERY
        ],
      ),
    );
  }
}
