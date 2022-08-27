import 'package:flutter/material.dart';
import 'package:signal_project/data/signal_lists.dart';
import 'package:signal_project/widgets/signal_widget.dart';

class MainApplication extends StatelessWidget {
  const MainApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: _getBody(),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text('Signals'),
      centerTitle: true,
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(
        fontFamily: 'vazir',
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ...List.generate(
              signalLists().length,
              (index) => signalWidget(signalLists()[index]),
            )
          ],
        ),
      ),
    );
  }
}
