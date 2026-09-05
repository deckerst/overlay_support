import 'package:material_ui/material_ui.dart';
import 'package:overlay_support/overlay_support.dart';

class PageWithIme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text('toast with ime')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ElevatedButton(
              child: Text('show toast'),
              onPressed: () {
                toast('message');
              }),
          TextField(autofocus: true)
        ],
      ),
    );
  }
}
