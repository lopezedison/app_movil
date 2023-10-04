import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  static const String id = 'user_profile_page';

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoController = TextEditingController();
  TextEditingController ciudadController = TextEditingController();
  TextEditingController correoController = TextEditingController();

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información de Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: nombreController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextFormField(
              controller: apellidoController,
              decoration: InputDecoration(labelText: 'Apellido'),
            ),
            TextFormField(
              controller: ciudadController,
              decoration: InputDecoration(labelText: 'Ciudad'),
            ),
            TextFormField(
              controller: correoController,
              decoration: InputDecoration(labelText: 'Correo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               },
              child: Text('Guardar'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: Text('Back'),
),

           
          ],
        ),
      ),
    );
  }
}
