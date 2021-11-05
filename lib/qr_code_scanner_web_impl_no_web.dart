import 'package:flutter/widgets.dart';

class QrCodeCameraWebImpl extends StatefulWidget {
  final void Function(String qrValue) qrCodeCallback;
  final Widget? child;
  final BoxFit? fit;
  final Widget Function(BuildContext context, Object error)? onError;

  const QrCodeCameraWebImpl({
    Key? key,
    required this.qrCodeCallback,
    this.child,
    this.fit = BoxFit.cover,
    this.onError,
  })  : super(key: key);

  @override
  State<StatefulWidget> createState() {
    throw FittedBox(
      fit: this.fit!,
      child: Container(
        child: Text('it is not in web environment'),
      ),
    );
  }

}


