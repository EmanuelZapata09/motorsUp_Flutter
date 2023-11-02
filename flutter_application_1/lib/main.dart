import 'package:flutter/material.dart';

void main() {
  runApp(const EjemploWidgetCenter());
}

class EjemploWidgetCenter extends StatefulWidget {
  const EjemploWidgetCenter({super.key});

  @override
  State<EjemploWidgetCenter> createState() => _EjemploWidgetCenterState();
}

class _EjemploWidgetCenterState extends State<EjemploWidgetCenter> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 6, 1, 158),
          title: const Text('Motors Up'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 64,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 11, 16, 116),
                  ),
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Configuracion'),
                onTap: () {
                  pagina(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Usuarios'),
                onTap: () {
                  pagina(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.motorcycle),
                title: const Text('Servicios'),
                onTap: () {
                  pagina(3);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Vpagina(currentPageIndex),
      ),
    );
  }

  void pagina(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  Widget Vpagina(int index) {
    switch (index) {
      case 1: // Configuracion
        return configuracion();
      case 2: // Usuarios
        return usuarios();
      case 3: // Servicios
        return servicios();
      default:
        return Container();
    }
  }

  Widget configuracion() {
    return Column(
      children: [
        const Card(
            elevation: 50,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                  'ERROR 404 \nNo puedes acceder a configuracion porque no tienes permisos.'),
            )),
        Container(
            alignment: Alignment.center,
            width: 1000,
            height: 500,
            child: const Image(image: AssetImage('imagenes/error.jpg'))),
      ],
    );
  }

  Widget usuarios() {
    return const Column(
      children: [
        Card(
            elevation: 50,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Text('Usuarios'),
            )),
        Card(
            elevation: 20,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Cliente'),
              subtitle: Text('Diego Andres Perez Lopez'),
            )),
        Card(
            elevation: 20,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Cliente'),
              subtitle: Text('Laura Duque Restrepo.'),
            )),
        Card(
            elevation: 20,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Proveedor'),
              subtitle: Text('ATMOPEL.'),
            )),
        Card(
            elevation: 20,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Administrador'),
              subtitle: Text('Emanuel Zapata Quintero'),
            )),
        Card(
            elevation: 20,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Empleado'),
              subtitle: Text('Diego Alejandro Berrio Perez.'),
            )),
      ],
    );
  }

  Widget servicios() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Card(
            elevation: 50,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    'Mantenimiento Preventivo',
                    style: TextStyle(
                      fontSize:
                          16,
                    ),
                  ),
                  Text(
                    'El mantenimiento preventivo de la moto es una excelente tarea para realizar antes de salir de paseo y comprobar que todo marcha bien con nuestra motocicleta. Esta rutina consiste en revisar los aspectos más importantes de la moto para comprobar que no corremos ningún riesgo al conducirla',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: 1000,
              height: 500,
              child:
                  const Image(image: AssetImage('imagenes/preventivo.webp'))),
          const Card(
            elevation: 50,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    'Mantenimiento Correctivo',
                    style: TextStyle(
                      fontSize:
                          16, 
              
                    ),
                  ),
                  Text(
                    'El mantenimiento correctivo implica detener la operatividad de tu moto para poder repararla. Por ejemplo, es posible que percibas sonidos o vibraciones anormales en tu moto. Este tipo de mantenimiento te lleva a revisar el origen de la anomalía, lo que casi siempre implica un reemplazo de piezas.',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: 1000,
              height: 500,
              child: const Image(image: AssetImage('imagenes/correctivo.jpg'))),
        ],
      ),
    );
  }
}
