// ignore: file_names
import 'package:flutter/material.dart';
import 'package:navigatorpush/models/item.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final List<Item> item1 = [
    Item(
        name: 'Frisian flag',
        price: 5000,
        desc:
            'Frisian Flag Indonesia (FFI) adalah produsen produk-produk nutrisi',
        image:
            'https://www.frisianflag.com/storage/app/media/Produk/GOLD_38gr.png'),
    Item(
        name: 'Malkist',
        price: 7000,
        desc:
            'Biskuit dan crackers menjadi salah satu camilan wajib buat kita saat  ',
        image:
            'https://th.bing.com/th?q=Malkist+Coklat&w=138&h=138&c=7&o=5&pid=1.7&mkt=en-ID&cc=ID&setlang=en&adlt=strict'),
    Item(
        name: 'Beras',
        price: 25000,
        desc:
            'Beras adalah bagian bulir padi (gabah) yang telah dipisah dari sekam. Sekam (Jawa mêrang) secara anatomi disebut palea (bagian yang ditutupi) dan lemma (bagian yang menutupi).Pada salah satu tahap pemrosesan hasil panen padi, gabah ditumbuk dengan lesung (Jawa lumpang) atau digiling sehingga bagian luarnya (kulit gabah) terlepas dari isinya. Bagian isi inilah, yang berwarna putih, kemerahan, ungu, atau bahkan hitam, yang disebut beras.',
        image:
            'https://th.bing.com/th/id/OIP.4FLja6fSLDVIo1Czs31nEQAAAA?rs=1&pid=ImgDetMain'),

        Item(
        name: 'Beras',
        price: 25000,
        desc:
            'Beras adalah bagian bulir padi (gabah) yang telah dipisah dari sekam. Sekam (Jawa mêrang) secara anatomi disebut palea (bagian yang ditutupi) dan lemma (bagian yang menutupi).Pada salah satu tahap pemrosesan hasil panen padi, gabah ditumbuk dengan lesung (Jawa lumpang) atau digiling sehingga bagian luarnya (kulit gabah) terlepas dari isinya. Bagian isi inilah, yang berwarna putih, kemerahan, ungu, atau bahkan hitam, yang disebut beras.',
        image:
            'https://th.bing.com/th/id/OIP.4FLja6fSLDVIo1Czs31nEQAAAA?rs=1&pid=ImgDetMain'),
              Item(
        name: 'Beras',
        price: 25000,
        desc:
            'Beras adalah bagian bulir padi (gabah) yang telah dipisah dari sekam. Sekam (Jawa mêrang) secara anatomi disebut palea (bagian yang ditutupi) dan lemma (bagian yang menutupi).Pada salah satu tahap pemrosesan hasil panen padi, gabah ditumbuk dengan lesung (Jawa lumpang) atau digiling sehingga bagian luarnya (kulit gabah) terlepas dari isinya. Bagian isi inilah, yang berwarna putih, kemerahan, ungu, atau bahkan hitam, yang disebut beras.',
        image:
            'https://th.bing.com/th/id/OIP.4FLja6fSLDVIo1Czs31nEQAAAA?rs=1&pid=ImgDetMain'),
              Item(
        name: 'Beras',
        price: 25000,
        desc:
            'Beras adalah bagian bulir padi (gabah) yang telah dipisah dari sekam. Sekam (Jawa mêrang) secara anatomi disebut palea (bagian yang ditutupi) dan lemma (bagian yang menutupi).Pada salah satu tahap pemrosesan hasil panen padi, gabah ditumbuk dengan lesung (Jawa lumpang) atau digiling sehingga bagian luarnya (kulit gabah) terlepas dari isinya. Bagian isi inilah, yang berwarna putih, kemerahan, ungu, atau bahkan hitam, yang disebut beras.',
        image:
            'https://th.bing.com/th/id/OIP.4FLja6fSLDVIo1Czs31nEQAAAA?rs=1&pid=ImgDetMain'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: item1.length,
          itemBuilder: (context, index) {
            final item = item1[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: Item(
                      name: item.name,
                      price: item.price,
                      desc: item.desc,
                      image: item.image),
                );
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(children: [
                    Expanded(child: Image.network(item.image)),
                    Expanded(
                        child: Text(
                      item.name,
                      textAlign: TextAlign.center,
                    )),
                    Expanded(
                        child: Text(
                      "IDR. " + item.price.toString(),
                      textAlign: TextAlign.end,
                    )),
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
