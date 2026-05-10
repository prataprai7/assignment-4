import 'package:assignment_4/models/employee_model.dart';
import 'package:assignment_4/utils/text_fields.dart';
import 'package:flutter/material.dart';


class EmployeeDataView extends StatefulWidget {
  const EmployeeDataView({super.key});

  @override
  State<EmployeeDataView> createState() => _EmployeeDataViewState();
}

class _EmployeeDataViewState extends State<EmployeeDataView> {
  final _formKey = GlobalKey<FormState>();
  final _idCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _genderCtrl = TextEditingController();
  final _deptCtrl = TextEditingController();
  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _obscure = true;

final List<Map<String, String>> _employees =[];
void _saveEmployee(){
  if(_formKey.currentState!.validate()){
    setState(() {
      _employees.add({
        'id': _idCtrl.text,
        'name': _nameCtrl.text,
        'gender': _genderCtrl.text,
        'department': _deptCtrl.text,
        'username': _userCtrl.text,
        'password': _passCtrl.text,
      });
    });
    _idCtrl.clear();
    _nameCtrl.clear();
    _genderCtrl.clear();
    _deptCtrl.clear();
    _userCtrl.clear();
    _passCtrl.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Employee Saved')),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employee Screen'),),
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Employee Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 8,),
              buildField(hint: 'Employee ID', icon: Icons.badge, controller: _idCtrl,validate: (v) => v!.isEmpty? "Required":null),
              buildField(hint: 'Full Name', icon: Icons.person, controller: _nameCtrl,validate: (v) => v!.isEmpty? "Required":null),
              buildField(hint: 'Gender', icon: Icons.wc, controller: _genderCtrl,validate: (v) => v!.isEmpty? "Required":null),
              buildField(hint: 'Department', icon: Icons.business, controller: _deptCtrl,validate: (v) => v!.isEmpty? "Required":null),
              buildField(hint: 'Username', icon: Icons.account_circle, controller: _userCtrl,validate: (v) => v!.isEmpty? "Required":null),
              buildField(
                hint: 'Password',
                icon: Icons.lock,
                controller: _passCtrl,
                obscure: _obscure,
                validate: (v)=>v!.isEmpty? 'Required':null,
                suffix: IconButton(
                  icon: Icon(_obscure? Icons.visibility_off: Icons.visibility, color: Colors.grey,),
                  onPressed: ()=> setState(()=> _obscure = !_obscure),
                ),
              ),
              const SizedBox(height: 8,),
              Padding(padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
             onPressed: _saveEmployee,
              child: const Text('Save Employee'),
              ),),
              const Divider(height: 32,),
              const Text('Employee List', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              ..._employees.map((e)=> Card(
                color: const Color(0xFFF5F5F5),
                margin: const EdgeInsets.symmetric(vertical: 4),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: const Icon(Icons.person, color: Colors.grey),
                  title: Text(e['name']!, style: const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(
                    '${e['id']}. ${e['gender']} . ${e['department']}\nUser: ${e['username']}',
                  ),
                  isThreeLine: true,
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}