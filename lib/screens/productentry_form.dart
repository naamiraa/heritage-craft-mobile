import 'package:flutter/material.dart';
import 'package:heritage_craft/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:heritage_craft/screens/menu.dart';
import 'dart:convert';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
    // Definisi variabel untuk menyimpan input form
  String _name = "";           // Untuk menyimpan nama produk
  int _price = 0;              // Untuk menyimpan harga produk
  String _description = "";     // Untuk menyimpan deskripsi produk
  String _image = "";           // Untuk menyimpan URL gambar produk
  String _category = "";        // Untuk menyimpan kategori produk
  String _placeOfOrigin = "";   // Untuk menyimpan daerah asal produk
  int _stock = 0;               // Untuk menyimpan jumlah stok produk
  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Produk',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.white),
        
      ),
      // TODO: Tambahkan drawer yang sudah dibuat di sini
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Nama produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama produk tidak boleh kosong!";
                    } else if (value.length < 3) {
                      return "Nama produk harus memiliki setidaknya 3 karakter!";
                    } else if (value.length > 255) {
                      return "Nama produk tidak boleh lebih dari 255 karakter!";
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Price",
                    labelText: "Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                        return "Price tidak boleh kosong!";
                      }
                      final int? price = int.tryParse(value);
                      if (price == null) {
                        return "Price harus berupa angka!";
                      } else if (price <= 0) {
                        return "Price tidak boleh negatif atau 0!";
                      }
                      return null;
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    } else if (value.length < 10) {
                      return "Deskripsi harus memiliki setidaknya 10 karakter!";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Image URL",
                    labelText: "Image URL",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _image = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Image URL tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Category",
                    labelText: "Category",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _category = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Category tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Place of Origin",
                    labelText: "Place of Origin",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _placeOfOrigin = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Place of origin tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Stock",
                    labelText: "Stock",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _stock = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Stock tidak boleh kosong!";
                    }
                    final int? stock = int.tryParse(value);
                    if (stock == null) {
                      return "Stock harus berupa angka!";
                    } else if (stock < 0) {
                      return "Stock tidak boleh negatif!";
                    }
                    return null;
                  },
                ),
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                            // Kirim ke Django dan tunggu respons
                            // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                            final response = await request.postJson(
                                "http://127.0.0.1:8000/create-flutter/",
                                jsonEncode(<String, String>{
                                    'name': _name,
                                    'price': _price.toString(),
                                    'description': _description,
                                    'image': _image,
                                    'category': _category,
                                    'place_of_origin': _placeOfOrigin,
                                    'stock': _stock.toString(),
                                    // 'availability': _avail.toString(),
                                    
                                }),
                            );
                            if (context.mounted) {
                                if (response['status'] == 'success') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                    content: Text("Product baru berhasil disimpan!"),
                                    ));
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                        content:
                                            Text("Terdapat kesalahan, silakan coba lagi."),
                                    ));
                                }
                            }
                        }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}