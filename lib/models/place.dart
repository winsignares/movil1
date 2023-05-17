class City {
  final String? name;
  final String? price;
  final String? place;
  final String? date;
  final String? image;
  final List<CityReviwes> reviews;

  const City({this.name, this.price, this.place, this.date,this.image,required this.reviews});

}

class CityReviwes {
  final String? avatar;
  final DateTime? date;
  final String? title;
  final String? subtitle;
  final String? description;
  final String? image;

  const CityReviwes({this.avatar, this.date, this.title, this.subtitle, this.description, this.image});

}

/**
 * llenamos el objeto
 */

final cities = <City>[
  City(
    name: 'Colombia',
    price: '12500',
    place: 'Barranquilla',
    date: '2023/05/17',
    image: 'assets/imgs/barranquilla.jpg',
    reviews:[CityReviwes(
      avatar: 'assets/imgs/img1.jpg',
      date: DateTime(2023, 5, 17, 8, 0, 0),
      title: 'titulo 1',
      subtitle: 'Subtitulo 1',
      description: 'Esta es la puerta de oro de Colombia',
      image: 'assets/imgs/barrio1.jpg'
    )]
  ),
  City(
    name: 'Colombia',
    price: '1500',
    place: 'Medellin',
    date: '2023/05/17',
    image: 'assets/imgs/medellin.jpg',
    reviews:[CityReviwes(
      avatar: 'assets/imgs/img2.jpg',
      date: DateTime(2023, 5, 17, 8, 0, 0),
      title: 'titulo 1',
      subtitle: 'Subtitulo 1',
      description: 'Es una ciudad Limpia',
      image: 'assets/imgs/barrio1.jpg'
    )]
  ),
];