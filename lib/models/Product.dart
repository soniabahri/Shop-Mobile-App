import 'package:cached_network_image/cached_network_image.dart';

class Product {
  final CachedNetworkImage image;
  final String title, description;
  final String price;
  String id, size;
  final String color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}


// List<Product> Productions = [
//   Product(
//     id: "1",
//     image: CachedNetworkImage(
//       fit: BoxFit.fill, imageUrl: r"https://contents.mediadecathlon.com/p2155551/k$11e0e6f8f6f4906c580007288ce1bdd0/chaussure-jogging-homme-run-active-noir-jaune.jpg",
//       placeholder: (context, url)=> const CircularProgressIndicator(),
//     ),
//     title: "Shoes 1",
//     price: 245,
//     description: "C'est un article vraiment tres belle et chic !!",
//     size: 38,
//     color: const Color(0xFFFFFFFF),
//   ),
//   Product(
//       id: "2",
//       image: CachedNetworkImage(
//         fit: BoxFit.fill, imageUrl: r"https://contents.mediadecathlon.com/p2175318/k$416f9fb5fbb7129cd028b4b862ea4431/chaussure-jogging-homme-run-active-noir-jaune.jpg",
//         placeholder: (context, url)=> const CircularProgressIndicator(),
//       ),
//       title: "Shoes 2",
//       price: 325,
//       description: "C'est un article vraiment tres belle et chic !!",
//       size: 38,
//       color: const Color(0xFFFFFFFF)),
//   Product(
//       id: "3",
//       image: CachedNetworkImage(
//         fit: BoxFit.fill, imageUrl: r'https://contents.mediadecathlon.com/p2155482/k$a8ae2632d6e351cd102a57f8a5f14d35/chaussure-jogging-homme-run-active-noir-jaune.jpg',
//         placeholder: (context, url)=> const CircularProgressIndicator(),
//       ),
//       title: "Shoes 3",
//       price: 125,
//       description: "C'est un article vraiment tres belle et chic !!",
//       size: 38,
//       color: const Color(0xFFFFFFFF)),
//   Product(
//       id: "4",
//       image: CachedNetworkImage(
//         fit: BoxFit.fill, imageUrl: r"https://contents.mediadecathlon.com/p2155510/k$2d4c941c14f1be10172d8977107329a6/chaussure-jogging-homme-run-active-noir-jaune.jpg",
//         placeholder: (context, url)=> const CircularProgressIndicator(),
//       ),
//       title: "Shoes 4",
//       price: 180,
//       description: "C'est un article vraiment tres belle et chic !!",
//       size: 38,
//       color: const Color(0xFFFFFFFF)),
//   Product(
//       id: "5",
//       image: CachedNetworkImage(
//         fit: BoxFit.fill, imageUrl: r"https://contents.mediadecathlon.com/p2031708/k$2ff7ca7d6928f4c9467c0de021ed8e7b/chaussures-de-fitness-imprime-leopard-120-femme-revelez-votre-personnalite-.jpg",
//         placeholder: (context, url)=> const CircularProgressIndicator(),
//       ),
//       title: "Shoes 5",
//       price: 95,
//       description: "C'est un article vraiment tres belle et chic !!",
//       size: 38,
//       color: const Color(0xFFFFFFFF)),
//   Product(
//       id: "6",
//       image: CachedNetworkImage(
//         fit: BoxFit.fill, imageUrl: r"https://contents.mediadecathlon.com/p2174724/k$8fdee166fc490294493965792e6728c0/chaussures-jogging-femme-run-100-gris.jpg",
//         placeholder: (context, url)=> const Center( heightFactor: 0.2,child: SizedBox(width: 6, height: 6, child: CircularProgressIndicator(),),),
//       ),
//       title: "Shoes 6",
//       price: 450,
//       description: "C'est un article vraiment tres belle et chic !!",
//       size: 38,
//       color: const Color(0xFFFFFFFF))
// ];
