import 'package:flutter/material.dart';

const List<Map<String, String>> gridItems = [
  {'name':"Pratap Rai", 'image':'assets/images/employee1.jpg'},
  {'name':"Salman Khan", 'image':'assets/images/employee2.jpg'},
  {'name':"Katrina Kaif", 'image':'assets/images/employee3.jpg'},
  {'name':"Hari Rijal", 'image':'assets/images/employee4.jpg'},
  {'name':"Sahid Kapoor", 'image':'assets/images/employee5.jpg'},
  {'name':"Amanda Roy", 'image':'assets/images/employee6.jpg'},
  {'name':"Nancy Jo", 'image':'assets/images/employee7.jpg'},
  {'name':"Flower Bake", 'image':'assets/images/employee8.jpg'},
  {'name':"Rose W", 'image':'assets/images/employee9.jpg'},
];

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Employee Grid View'),
        centerTitle: true,
      ),
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
              radius: 30,
              backgroundImage: AssetImage(gridItems[i]['image']!),
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