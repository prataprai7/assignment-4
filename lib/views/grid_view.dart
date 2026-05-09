import 'package:flutter/material.dart';

const List<Map<String, String>> gridItems = [
  {'name':"Pratap rai", 'init':'PR'},
  {'name':"Salman Khan", 'init':'SK'},
  {'name':"Katrina Kaif", 'init':'KK'},
  {'name':"Hari Rijal", 'init':'HR'},
  {'name':"Sahid Kapoor", 'init':'SKK'},
  {'name':"Amanda Roy", 'init':'AR'},
  {'name':"Nancy Jo", 'init':'NJ'},
  {'name':"Flower Bake", 'init':'FB'},
  {'name':"Rose W", 'init':'RW'},
];

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(padding: 
      const EdgeInsets.all(12),
      child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10),
      itemCount: 9,
      itemBuilder: (_, i)=> Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Text(
                gridItems[i]['init']!,
                style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              gridItems[i]['name']!,
              textAlign: TextAlign.center,
              style:  const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
      ),),
    );
  }
}