import 'package:flutter/material.dart';
import 'package:movil17052023/models/place.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(
    viewportFraction: 0.8,
  );
  double page = 0.0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(_listener);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.removeListener(_listener);
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      _btnBuscar(),
                      _btnSetting(),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      final city = cities[index];
                      return Container();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Expanded _btnBuscar() {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(children: [
            Icon(Icons.search),
            Expanded(child: Text('Buscar Ciudades'))
          ]),
        ),
      ),
    );
  }

  IconButton _btnSetting() {
    return IconButton(
      onPressed: () => print('Hola mundo'),
      icon: Icon(Icons.settings),
    );
  }

  void _listener() {
    setState(() {
      page = _pageController.page as double;
    });
  }
}
