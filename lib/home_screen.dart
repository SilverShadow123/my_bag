import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
int pcrease =1;
int tcrease =1;
int screase =1;
int pt =51;
int tt =30;
int st =43;

int get ptotal=> pcrease*pt;
int get ttotal=> tcrease*tt;
int get stotal=> screase*st;

int get totalAmount=> ptotal+ttotal+stotal;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Bag',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: listOfItems(),
      ),
     bottomNavigationBar: BottomAppBar(height: 100 ,child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               const Text('Total amount:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
               Text('\$ $totalAmount', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
             ],
           ),
           ElevatedButton(
             onPressed: () {
               ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(content: Text('Congratulations! You have checked out successfully.')),
               );
             },
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.red,
               padding: EdgeInsets.symmetric(horizontal: 160, vertical: 15),
               textStyle: TextStyle(fontSize: 16),
             ),
             child: Text('CHECK OUT',style: TextStyle(color: Colors.white),),
           ),
         ],
       ),
     ),
     );
  }

  Widget listOfItems() {
    return Column(
      children: [
        ListTile(
          title: Text('Pullover'),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Color:Black  Size: L'),
              Row(
                children: [
                  TextButton(onPressed: pulldecrement, child: Text('-')),
                  Text('$pcrease'),
                  TextButton(onPressed: pullincrement, child: Text('+')),
                ],
              )
            ],
          ),
          trailing: Text('$ptotal'),
          leading: Image.network(
              'https://blacknavybd.com/wp-content/uploads/2023/05/Black-oversized-tshirt-3.jpg'),
        ),
        ListTile(
          title: Text('T-Shirt'),
          subtitle: Column(
            children: [
              Text('Color:Black  Size: M'),
              Row(
                children: [
                  TextButton(onPressed:tdecrement, child: Text('-')),
                  Text('$tcrease'),
                  TextButton(onPressed: tincrement, child: Text('+')),
                ],
              )
            ],
          ),
          trailing: Text('$ttotal'),
          leading: Image.network(
              'https://blacknavybd.com/wp-content/uploads/2023/05/Black-oversized-tshirt-3.jpg'),
        ),
        ListTile(
          title: Text('Sport Shirt'),
          subtitle: Column(
            children: [
              Text('Color:Black  Size: S'),
              Row(
                children: [
                  TextButton(onPressed: sdecrement, child: Text('-')),
                  Text('$screase'),
                  TextButton(onPressed: sincrement, child: Text('+')),
                ],
              )
            ],
          ),
          trailing: Text('$stotal'),
          leading: Image.network(
              'https://blacknavybd.com/wp-content/uploads/2023/05/Black-oversized-tshirt-3.jpg'),
        ),
      ],
    );
  }

  void pullincrement(){
    pcrease++;
    setState(() {

    });
  }
  void pulldecrement(){
    if (pcrease<2)
      {
        pcrease=1;
      }
    else{
      pcrease--;
    }

    setState(() {

    });
  }
  void tincrement(){
    tcrease++;
    setState(() {

    });
  }
  void tdecrement(){


    if (tcrease<2)
      {
        tcrease=1;
      }
    else{
      tcrease--;
    }

    setState(() {

    });
  }
  void sincrement(){
    screase++;
    setState(() {

    });
  }
  void sdecrement(){


    if (screase<2)
      {
        screase=1;
      }
    else{
      screase--;
    }

    setState(() {

    });
  }




}
