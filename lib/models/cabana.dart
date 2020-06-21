// cabana model
class Cabana {
  final int id, cuartos, maxHuesped;
  final double costoNoche;
  final String descripcion, topFoto, nombreCab, plano;
  final List<String> cuartosStuff;
  final List<Map> galeria;

  Cabana({
    this.costoNoche,
    this.cuartos,
    this.descripcion,
    this.plano,
    this.galeria,
    this.id,
    this.maxHuesped,
    this.nombreCab,
    this.topFoto,
    this.cuartosStuff,
  });
}

//demo data cabana
List<Cabana> cabanias = [
  Cabana(
      id: 1,
      nombreCab: 'Cabaña 1',
      descripcion:
          'La original que esta entrando de un piso con un gran espacio comun y muchas memorias ',
      costoNoche: 1500.00,
      plano: '/cab1_plano.png',
      topFoto: "/comun_alberca2.jpeg",
      cuartos: 3,
      maxHuesped: 15,
      cuartosStuff: [
        "cocina",
        "chimenea",
        "sofa cama",
        "terraza",
        "1 planta"
      ],
      galeria: [
        {
          "caption": "Sala principal",
          "image": "/cab1_sala.jpeg",
        },
        {
          "caption": "Plano Cabaña",
          "image": "/cab1_plano.png",
        },
        {
          "caption": "Camas",
          "image": "/cab_camas.jpeg",
        },
        {
          "caption": "alberca",
          "image": "/comun_alberca.jpeg",
        },
        {
          "caption": "Patio cancha",
          "image": "/comun_patio2.jpeg",
        },
      ]),
  Cabana(
      id: 2,
      nombreCab: 'Cabaña 2',
      descripcion:
          'La del fondo con 2 plantas y una vista nocturna genial muy romantica ',
      costoNoche: 1200.00,
      plano: '/cab2_plano.png',
      topFoto: "/comun_asador.jpeg",
      cuartos: 3,
      maxHuesped: 15,
      cuartosStuff: [
        "cocina",
        "chimenea",
        "sofa cama",
        "terraza",
        "1 planta"
      ],
      galeria: [
        {
          "caption": "Sala principal",
          "image": "/cab2_sala.jpeg",
        },
        {
          "caption": "Plano planta baja",
          "image": "/cab2_plano.png",
        },
        {
          "caption": "Plano planta Alta",
          "image": "/cab2_plano2.png",
        },
        {
          "caption": "Camas",
          "image": "/cab_camas2.jpeg",
        },
        {
          "caption": "alberca",
          "image": "/comun_alberca.jpeg",
        },
        {
          "caption": "Patio cancha",
          "image": "/comun_juegos.jpeg",
        },
      ]),
  Cabana(
      id: 3,
      nombreCab: 'Renta todo',
      descripcion:
          'Reserva todo las 2 cabanas en combo paquete y ahorra un 9% ',
      costoNoche: 2500.00,
      plano: '/cab_plano3.png',
      topFoto: "/torreagua.jpeg",
      cuartos: 3,
      maxHuesped: 25,
      cuartosStuff: [
        "cocina",
        "chimenea",
        "sofa cama",
        "terraza",
        "1 planta"
      ],
      galeria: [
        {
          "caption": "Sala principal",
          "image": "/cab2_sala.jpeg",
        },
        {
          "caption": "Plano planta baja",
          "image": "/cab2_plano.png",
        },
        {
          "caption": "Plano planta Alta",
          "image": "/cab2_plano2.png",
        },
        {
          "caption": "Camas",
          "image": "/cab_camas2.jpeg",
        },
        {
          "caption": "alberca",
          "image": "/comun_alberca.jpeg",
        },
        {
          "caption": "Patio cancha",
          "image": "/comun_juegos.jpeg",
        },
      ]),
];
