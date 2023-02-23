import 'package:asset_handeling/ceoModal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> CeoName = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezoz",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Micheal Dell",
    "Bob Swan",
  ];
  List<String> Company = [
    "Google",
    "Microsoft",
    "Amazon",
    "Relience",
    "Apple",
    "Adobe",
    "Ali-Baba",
    "BMW",
    "Dell",
    "Intel",
  ];
  List Image = [
    "assets/images/vpavic_171003_2029_0067.5.jpg",
    "assets/images/104891709-Bill_Gates_the_co-Founder.jpg",
    "assets/images/jeff-bezos-andrew-harrer_bloomberg-via-getty-images.jpg",
    "assets/images/mukesh-ambani.jpg",
    "assets/images/1128955260.jpg.0.jpg",
    "assets/images/adobeceo.jpg",
    "assets/images/Daniel-for-website.jpg",
    "assets/images/2015-597760harald-krueger1.jpg",
    "assets/images/michael-dell-dell-technologies-world.jpg",
    "assets/images/Bob_Swan_01.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ceo List"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(

            itemCount: 10,
            itemBuilder: (context, index) => Ceo(index,CeoName[index],Company[index],Image[index]),
          ),
        ),
      ),
    );
  }

  Widget Ceo(int i,String Name,String company,String image) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 70,
      width: double.infinity,
      color: Colors.blue.shade100,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("$image"),
        ),
        title: Text("$Name"),
        subtitle: Text("$company"),
        trailing: IconButton(onPressed: () {
          Modal m1 = Modal(Name: Name,Company: company);

          Navigator.pushNamed(context, 'Display',arguments: m1);
        }, icon: Icon(Icons.navigate_next_sharp)),
      ),
    );
  }
}
