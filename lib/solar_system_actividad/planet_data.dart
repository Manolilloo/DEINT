/*Este es el archivo que va a guardar la info de los planetas
y las guarda en una lista para que luego se pueda recorrer en el
solar_system.dart*/

class PlanetData {
  final String nombre;
  final String distancia;
  final String imagenRuta;
  final String descripcion;

  const PlanetData({
    required this.distancia,
    required this.imagenRuta,
    required this.nombre,
    required this.descripcion,
  });
}

final List<PlanetData> mockPlanetas = [
  PlanetData(
    nombre: "Sun",
    distancia: "0 Millones Km",
    imagenRuta: "assets/images/plantetas/sun.png",
    descripcion: "The star at the heart of our solar system. Its gravity holds the solar system together, keeping everything from the biggest planets to the smallest particles in orbit.",
  ),
  PlanetData(
    nombre: "Moon",
    distancia: "149.6 Millones Km",
    imagenRuta: "assets/images/plantetas/moon.png",
    descripcion: "Earth's only natural satellite and the fifth largest moon in the solar system. It moderates Earth's wobble on its axis and causes tides.",
  ),
  PlanetData(
    nombre: "Mercury",
    distancia: "57.9 Millones Km",
    imagenRuta: "assets/images/plantetas/mercury.png",
    descripcion: "Mercury is the planet nearest to the Sun, and the smallest planet in our solar system.",
  ),
  PlanetData(
    nombre: "Venus",
    distancia: "108.2 Millones Km",
    imagenRuta: "assets/images/plantetas/venus.png",
    descripcion: "Venus is the second planet from the Sun, and the sixth largest planet.",
  ),
  PlanetData(
    nombre: "Earth",
    distancia: "149.5 Millones Km",
    imagenRuta: "assets/images/plantetas/earth.png",
    descripcion: "Earth – our home planet – is the third planet from the Sun, and the fifth largest planet.",
  ),
  PlanetData(
    nombre: "Mars",
    distancia: "227.9 Millones Km",
    imagenRuta: "assets/images/plantetas/mars.png",
    descripcion: "Mars is the fourth planet from the Sun, and the seventh largest planet.",
  ),
  PlanetData(
    nombre: "Jupiter",
    distancia: "778.5 Millones Km",
    imagenRuta: "assets/images/plantetas/jupiter.png",
    descripcion: "Jupiter is the fifth planet from the Sun, and the largest planet in our solar system.",
  ),
  PlanetData(
    nombre: "Saturn",
    distancia: "1,434 Millones Km",
    imagenRuta: "assets/images/plantetas/saturn.png",
    descripcion: "Saturn is the sixth planet from the Sun, the second largest planet in our solar system.",
  ),
  PlanetData(
    nombre: "Uranus",
    distancia: "2,871 Millones Km",
    imagenRuta: "assets/images/plantetas/uranus.png",
    descripcion: "Uranus is the seventh planet from the Sun, and the third largest planet in our solar system.",
  ),
  PlanetData(
    nombre: "Neptune",
    distancia: "4,495 Millones Km",
    imagenRuta: "assets/images/plantetas/neptune.png",
    descripcion: "Neptune is the eighth and most distant planet in our solar system. It's the fourth largest planet.",
  ),
  PlanetData(
    nombre: "Pluto",
    distancia: "5,906 Millones Km",
    imagenRuta: "assets/images/plantetas/pluto.png",
    descripcion: "Pluto was long considered our solar system's ninth planet. It was reclassified as a dwarf planet in 2006 by the International Astronomical Union.",
  ),
];
