import '../imports.dart';

// COLORS
const Color k_mainColor = Color(0xff08af5f);
const Color k_mainGreyColor = Color(0xffb8b8b8);

// SIZE
const double k_size = 8.0;
const double k_fontSize = k_size * 2;
const double k_radius = 12.0;

// Data
const List<Map> deliveryCharges = [
  {
    "price": 3.00,
    "coverage": [
      "Errands within campus",
      "Food vendors",
      "Packages pick-up within campus"
    ]
  },
  {
    "price": 5.00,
    "coverage": [
      "Errands out of campus",
      "Packages pick-up out of campus"
    ]
  },
];