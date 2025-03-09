import 'package:flutter/material.dart';

class GridViewExamples extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "title": "Nature",
      "subtitle": "Beautiful landscapes",
      "image": "https://imoholidays.com/wp-content/uploads/2024/09/China.png.webp",
    },
    {
      "title": "City",
      "subtitle": "Urban life",
      "image": "https://imoholidays.com/wp-content/uploads/2024/09/Canada.jpg.webp",
    },
    {
      "title": "Beach",
      "subtitle": "Relaxing vibes",
      "image": "https://imoholidays.com/wp-content/uploads/2024/09/Singapore-1.jpg.webp",
    },
    {
      "title": "Mountains",
      "subtitle": "Adventure awaits",
      "image": "https://imoholidays.com/wp-content/uploads/2024/09/Thailand.jpg.webp",
    },
    {
      "title": "Forest",
      "subtitle": "Peaceful greenery",
      "image": "https://imoholidays.com/wp-content/uploads/2024/09/Philippines-1.png.webp",
    },
    {
      "title": "Desert",
      "subtitle": "Endless horizons",
      "image": "https://imoholidays.com/wp-content/uploads/2024/09/vietnam-1.png.webp",
    },
  ];

  GridViewExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beautiful GridView Example"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 12.0, // Spacing between columns
            mainAxisSpacing: 12.0, // Spacing between rows
            childAspectRatio: 0.75, // Adjusted for better UI
          ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5.0, // Shadow for the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12.0)), // Rounded top corners
                      child: Image.network(
                        items[index]["image"] ?? "", // Ensuring null safety
                        fit: BoxFit.cover, // Cover the entire space
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index]["title"] ?? "",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          items[index]["subtitle"] ?? "",
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
