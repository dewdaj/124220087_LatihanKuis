import 'package:flutter/material.dart';
import 'package:latkuis/dummy_menu.dart'; // Mengimpor data dummy dari dummy_menu.dart

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink[100]!, Colors.pink[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat datang, $username',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[800],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: foodMenuList.length,
                  itemBuilder: (context, index) {
                    final foodItem = foodMenuList[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 5,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            foodItem.imageUrls.first,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          foodItem.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[800],
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodItem.category,
                              style: TextStyle(color: Colors.pink[600]),
                            ),
                            Text(
                              'Harga: ${foodItem.price}',
                              style: TextStyle(color: Colors.pink[700]),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
