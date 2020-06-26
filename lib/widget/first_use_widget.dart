import 'package:flutter/widgets.dart';

import '../first_use.dart';

class FirstUseWidget extends StatelessWidget {
  final Widget isFirstUse;
  final Widget isNotFirstUse;

  const FirstUseWidget(
      {Key key, @required this.isFirstUse, @required this.isNotFirstUse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirstUse().isFirstUse(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data == true) {
            return isFirstUse;
          } else {
            return isNotFirstUse;
          }
        }

        return Container();
      },
    );
  }
}
