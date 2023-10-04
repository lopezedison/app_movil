import 'package:flutter/material.dart';
import 'user_profile_page.dart' as UserProfile;
import 'package:flutter_vista_perfil/pages/menu.dart';

class LoginPage extends StatelessWidget {
  static String id = 'page_login';

  final VoidCallback? onLogin;

  const LoginPage({Key? key, this.onLogin}) : super(key: key);

  void loginCallback(BuildContext context) {
    onLogin?.call();
    Navigator.pushReplacementNamed(context, UserProfile.UserProfilePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 93, 99),
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 140, 221, 217),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 25.0,
              spreadRadius: 5.0,
              offset: Offset(15.0, 15.0),
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://www.creativefabrica.com/wp-content/uploads/2019/03/Monogram-NH-Logo-Design-by-Greenlines-Studios.jpg',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                'NexusHub Pro',
                style: TextStyle(fontSize: 16),
              ),
              //const Text(
              //  'Correo Electrónico: edisona.lopezv@utadeo.edu.co',
              //  style: TextStyle(fontSize: 16),
              //),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Username@correo.com',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).push(
                   MaterialPageRoute(
                     builder: (context) => MainMenu(
                 ),
               ),
             );

                 },
                child: Text('Login', style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                   fontSize: 20,
            ),
          ),
        ),
        ),
                 const SizedBox(height: 20),
                 const Text(''), ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, UserProfile.UserProfilePage.id); 
                 },
                child: Text('Crear una cuenta', style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
