import 'package:asset_handeling/ceoModal.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Modal m1 = ModalRoute.of(context)!.settings.arguments as Modal;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

        ),
      ),
    );
  }
}
