/*Este es el archivo que va a guardar la info de los planetas
y las guarda en una lista para que luego se pueda recorrer en el
solar_system.dart*/

class PlanetData {
  final String nombre;
  final String distancia;
  final String imagenRuta;

  const PlanetData({required this.distancia, required this.imagenRuta, required this.nombre});
}

final List<PlanetData> mockPlanetas = [
  PlanetData(
    nombre: "Mercury",
    distancia: "57.9 Millones Km",
    imagenRuta: "assets/images/plantetas/mercury.png",
  ),
  PlanetData(
    nombre: "Venus",
    distancia: "108.2 Millones Km",
    imagenRuta: "assets/images/plantetas/venus.png",
  ),
  PlanetData(
    nombre: "Earth",
    distancia: "149.5 Millones Km",
    imagenRuta: "assets/images/plantetas/earth.png",
  ),
  PlanetData(
    nombre: "Mars",
    distancia: "227.9 Millones Km",
    imagenRuta: "assets/images/plantetas/mars.png",
  ),
  PlanetData(
    nombre: "Jupiter",
    distancia: "778.5 Millones Km",
    imagenRuta: "assets/images/plantetas/jupiter.png",
  ),
  PlanetData(
    nombre: "Saturn",
    distancia: "1,434 Millones Km",
    imagenRuta: "assets/images/plantetas/saturn.png",
  ),
  PlanetData(
    nombre: "Uranus",
    distancia: "2,871 Millones Km",
    imagenRuta: "assets/images/plantetas/uranus.png",
  ),
  PlanetData(
    nombre: "Neptune",
    distancia: "4,495 Millones Km",
    imagenRuta: "assets/images/plantetas/neptune.png",
  ),
  PlanetData(
    nombre: "Pluto",
    distancia: "5,906 Millones Km",
    imagenRuta: "assets/images/plantetas/pluto.png",
  ),
];