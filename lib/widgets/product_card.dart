import 'package:flutter/material.dart';
import 'package:heritage_craft/screens/productentry_form.dart';


class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Tambahkan atribut warna untuk setiap item
  ItemHomepage(this.name, this.icon, this.color);
}
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.
  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 
  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: item.color, // Gunakan warna khusus dari item
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
      // Area responsif terhadap sentuhan
      onTap: () {
        // Memunculkan SnackBar ketika diklik
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.name}!")));

        // Navigate ke route yang sesuai (tergantung jenis tombol)
        if (item.name == "Tambah Produk") {
          // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup MoodEntryFormPage.
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductEntryFormPage(),
              ));
        }
      },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}