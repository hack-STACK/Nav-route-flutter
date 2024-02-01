import 'package:flutter/material.dart';
import 'package:navigatorpush/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the item from the route settings
    final Item? selectedItem =
        ModalRoute.of(context)?.settings.arguments as Item?;

    if (selectedItem == null) {
      // Handle the case where the item is null, for example, show an error message
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: const Center(
          child: Text('Error: Item not found'),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text('Item Page'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 265,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Padding(
              
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: 
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    selectedItem.image,
                    height: 150,
                    errorBuilder: (context, error, stackTrace) {
                      return Text('Failed to load image');
                    },
                  ),
                ),
                Text(
                  selectedItem.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  selectedItem.desc,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                   textAlign: TextAlign.end,
                  '\Rp.${selectedItem.price}',
                 
                )
              ]),
              
            ),

          ),
        ),
    
      );
    }
  }
}
