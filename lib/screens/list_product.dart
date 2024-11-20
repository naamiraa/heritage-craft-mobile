// // import 'package:flutter/material.dart';
// // import 'package:heritage_craft/models/product_entry.dart';
// // import 'package:heritage_craft/widgets/left_drawer.dart';
// // import 'package:pbp_django_auth/pbp_django_auth.dart';
// // import 'package:provider/provider.dart';

// // class ProductPage extends StatefulWidget {
// //   const ProductPage({super.key});

// //   @override
// //   State<ProductPage> createState() => _ProductPageState();
// // }

// // class _ProductPageState extends State<ProductPage> {
// //   Future<List<Product>> fetchProduct(CookieRequest request) async {
// //     final response = await request.get('http://127.0.0.1:8000/json/');
    
// //     // Melakukan decode response menjadi bentuk json
// //     var data = response;
    
// //     // Melakukan konversi data json menjadi object MoodEntry
// //     List<Product> listProduct = [];
// //     for (var d in data) {
// //       if (d != null) {
// //         listProduct.add(Product.fromJson(d));
// //       }
// //     }
// //     return listProduct;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final request = context.watch<CookieRequest>();
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Product List'),
// //       ),
// //       drawer: const LeftDrawer(),
// //       body: FutureBuilder(
// //         future: fetchProduct(request),
// //         builder: (context, AsyncSnapshot snapshot) {
// //           if (snapshot.data == null) {
// //             return const Center(child: CircularProgressIndicator());
// //           } else {
// //             if (!snapshot.hasData) {
// //               return const Column(
// //                 children: [
// //                   Text(
// //                     'Belum ada product pada Heritage Craft.',
// //                     style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 252, 242, 214)),
// //                   ),
// //                   SizedBox(height: 8),
// //                 ],
// //               );
// //             } else {
// //               return ListView.builder(
// //                 itemCount: snapshot.data!.length,
// //                 itemBuilder: (_, index) => Container(
// //                   margin:
// //                       const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
// //                   padding: const EdgeInsets.all(20.0),
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.start,
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text(
// //                         "${snapshot.data![index].fields.name}",
// //                         style: const TextStyle(
// //                           fontSize: 18.0,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       const SizedBox(height: 10),
// //                       Text("${snapshot.data![index].fields.price}"),
// //                       const SizedBox(height: 10),
// //                       Text("${snapshot.data![index].fields.description}"),
// //                       const SizedBox(height: 10),
// //                       // Menampilkan gambar dari URL
// //                       Image.network(
// //                         snapshot.data![index].fields.image,
// //                         height: 300,
// //                         width: double.infinity,
// //                         fit: BoxFit.cover,
// //                         errorBuilder: (context, error, stackTrace) {
// //                           return const Text('Failed to load image');
// //                         },
// //                       ),
// //                       const SizedBox(height: 10),
// //                       Text("${snapshot.data![index].fields.category}"),
// //                       const SizedBox(height: 10),
// //                       Text("${snapshot.data![index].fields.placeOfOrigin}"),
// //                       const SizedBox(height: 10),
// //                       Text("${snapshot.data![index].fields.stock}"),
// //                       const SizedBox(height: 10),
// //                       Text("${snapshot.data![index].fields.availability}"),
// //                       // const SizedBox(height: 10),
// //                       // Text("${snapshot.data![index].fields.time}")
// //                     ],
// //                   ),
// //                 ),
// //               );
// //             }
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }



// import 'package:flutter/material.dart';
// import 'package:heritage_craft/models/product_entry.dart';
// import 'package:heritage_craft/widgets/left_drawer.dart';
// import 'package:pbp_django_auth/pbp_django_auth.dart';
// import 'package:provider/provider.dart';
// import 'productdetail_page.dart'; // Import halaman detail produk

// class ProductPage extends StatefulWidget {
//   const ProductPage({super.key});

//   @override
//   State<ProductPage> createState() => _ProductPageState();
// }

// class _ProductPageState extends State<ProductPage> {
//   Future<List<Product>> fetchProduct(CookieRequest request) async {
//     final response = await request.get('http://127.0.0.1:8000/json/');
    
//     var data = response;
    
//     List<Product> listProduct = [];
//     for (var d in data) {
//       if (d != null) {
//         listProduct.add(Product.fromJson(d));
//       }
//     }
//     return listProduct;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final request = context.watch<CookieRequest>();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Product List'),
//       ),
//       drawer: const LeftDrawer(),
//       body: FutureBuilder(
//         future: fetchProduct(request),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.data == null) {
//             return const Center(child: CircularProgressIndicator());
//           } else {
//             if (!snapshot.hasData) {
//               return const Column(
//                 children: [
//                   Text(
//                     'Belum ada product pada Heritage Craft.',
//                     style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 252, 242, 214)),
//                   ),
//                   SizedBox(height: 8),
//                 ],
//               );
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (_, index) => Container(
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//                   padding: const EdgeInsets.all(20.0),
//                   decoration: BoxDecoration(
//                     border: Border.all(),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           // Navigasi ke halaman detail ketika nama diklik
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => ProductDetailPage(
//                                 product: snapshot.data![index],
//                               ),
//                             ),
//                           );
//                         },
//                         child: Text(
//                           "${snapshot.data![index].fields.name}",
//                           style: const TextStyle(
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                             color: Color.fromARGB(255, 171, 129, 110),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text("Price: ${snapshot.data![index].fields.price}"),
//                       const SizedBox(height: 10),
//                       Text("Description: ${snapshot.data![index].fields.description}"),
//                     ],
//                   ),
//                 ),
//               );
//             }
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:heritage_craft/models/product_entry.dart';
import 'package:heritage_craft/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'productdetail_page.dart'; // Import halaman detail produk

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  Future<List<Product>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://127.0.0.1:8000/json/');
    
    var data = response;
    
    List<Product> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(Product.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchProduct(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada product pada Heritage Craft.',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 252, 242, 214)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click, // Mengubah kursor menjadi pointer
                        child: GestureDetector(
                          onTap: () {
                            // Navigasi ke halaman detail ketika nama diklik
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailPage(
                                  product: snapshot.data![index],
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 171, 129, 110),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("Price: ${snapshot.data![index].fields.price}"),
                      const SizedBox(height: 10),
                      Text("Description: ${snapshot.data![index].fields.description}"),
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}
