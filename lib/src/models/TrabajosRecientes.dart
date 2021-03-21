class TrabajosRecientes {
  final String image, category, title;
  final int id;

  TrabajosRecientes({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<TrabajosRecientes> trabajosRecientes = [
  TrabajosRecientes(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_1.png",
  ),
  TrabajosRecientes(
    id: 2,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_2.png",
  ),
  TrabajosRecientes(
    id: 3,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_3.png",
  ),
  TrabajosRecientes(
    id: 4,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_4.png",
  ),
];