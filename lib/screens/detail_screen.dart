import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi modelCandi;
  const DetailScreen({super.key, required this.modelCandi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  // Info Tengah Row 1 : Lokasi
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.place, color: Colors.red),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 70,
                        child: Text(
                          "Lokasi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(": ${modelCandi.location}"),
                    ],
                  ),
                  // Info Tengah Row 2 : Dibangun
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Colors.blue),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 70,
                        child: Text(
                          "Dibangun",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(": ${modelCandi.built}"),
                    ],
                  ),
                  // Info Tengah Row 3 : Tipe
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.home_outlined, color: Colors.green),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 70,
                        child: Text(
                          "Tipe",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(": ${modelCandi.type}"),
                    ],
                  ),
                  // Garis Pemisah
                  const SizedBox(height: 16),
                  Divider(color: Colors.deepPurple.shade100),
                  const SizedBox(height: 16),
                  // Info Bawah
                  const Text(
                    "Deskripsi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Text(modelCandi.description),
                ],
              ),
            ),
            // DETAIL GALLERY
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Garis Pemisah
                  const SizedBox(height: 16),
                  Divider(color: Colors.deepPurple.shade100),
                  const SizedBox(height: 16),
                  // Judul Gallery
                  const Text(
                    "Gallery",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  // Kotak Gallery
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: modelCandi.imageUrls.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                            onTap: () {},
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(12),
                              child: CachedNetworkImage(
                                imageUrl: modelCandi.imageUrls[index],
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => Container(
                                  width: 120,
                                  height: 120,
                                  color: Colors.deepPurple[50],
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Tap untuk memperbesar",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
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
