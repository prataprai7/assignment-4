import 'package:assignment_4/views/employee_data_view.dart';
import 'package:assignment_4/views/grid_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Assignment 4',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8,),
          const Text(
            'Employee Management',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 48,),
          ElevatedButton.icon(
            icon: const Icon(Icons.people),
            label: const Text('Employee screen'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
            ),
            onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> const EmployeeDataView()),
          ),
          ),
          const SizedBox(height: 16,),
          ElevatedButton.icon(icon:  const Icon(Icons.grid_view),
          label: const Text('Gride View Screen'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
          ),
          onPressed: ()=> Navigator.push(context,
          MaterialPageRoute(builder: (_)=> const GridScreen()),
          ),
          ),
        ],
      ),
      ),
    );
  }
}