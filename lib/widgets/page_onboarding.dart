import 'package:flutter/material.dart';
import 'package:app_recetas/screens/screen.dart';

class PageOnboarding extends StatelessWidget {
  const PageOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(context: context),
    );
  }

  /// WIDGETS COMPONENTS
  Widget body({required BuildContext context}) {
    return Container(
      color: pColor,
      child: SafeArea(
        // SafeArea : Un widget que inserta a su hijo con suficiente relleno para evitar intrusiones por parte del sistema operativo.
        child: PageView(
          controller: PageController(initialPage: 0),
          pageSnapping: true, //  Deslizaiento automatico */
          scrollDirection: Axis.vertical, //  Dirección de deslizamiento  */
          children: <Widget>[
            viewComponent(
                context: context,
                assetImage: const AssetImage('assets/chef2.jpg'),
                title: "Bienvenido...",
                description: ""),
            viewComponent(
                context: context,
                assetImage: const AssetImage('assets/comida.png'),
                title: "Recetas de Comidas Gourmet ",
                description:
                    "Recetario donde encontraras varios tipos de comida"),
            viewComponent(
                context: context,
                assetImage: const AssetImage('assets/libro_Recetas.png'),
                title: "Ven y comparte nuestra cocina ",
                description:
                    "Realiza cada plato de comida y veras lo rico que son nuestras recetas.."),
            paginaButton(context),
          ],
        ),
      ),
    );
  }

  Widget viewComponent(
      {required AssetImage assetImage,
      required BuildContext context,
      IconData? iconData,
      String title = "",
      String description = ""}) {
    // Declaramos los estilos
    const estiloTitulo = TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
    const estiloSubTitulo = TextStyle(fontSize: 20.0, color: Colors.white);
    Color? color = Colors.white;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Expanded(child: Container()),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: iconData == null
                  ? Image(
                      image: assetImage,
                      width: 250.0,
                      height: 250.0,
                      fit: BoxFit.cover)
                  : Icon(iconData)),
          Text(title, style: estiloTitulo, textAlign: TextAlign.center),
          const SizedBox(height: 12.0),
          Text(description,
              style: estiloSubTitulo, textAlign: TextAlign.center),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: color)
        ],
      ),
    );
  }

  Widget paginaButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          child: ElevatedButton(
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Text(
                  'Bienvenidos',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
            onPressed: () => Navigator.of(context)
                .pushNamed(TapsScreen.routeName),
          ),
        ),
      ),
    );
  }
}
