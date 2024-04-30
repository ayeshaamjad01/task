import 'package:flutter/widgets.dart';

class PhotoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 80.999;
    final double _yScaling = size.height / 190.111;
    path.lineTo(70.36 * _xScaling, 49.230000000000004 * _yScaling);
    path.cubicTo(
      75.66 * _xScaling,
      55.53 * _yScaling,
      76.96 * _xScaling,
      64.63000000000001 * _yScaling,
      77.36 * _xScaling,
      72.93 * _yScaling,
    );
    path.cubicTo(
      77.66 * _xScaling,
      81.13000000000001 * _yScaling,
      76.86 * _xScaling,
      88.63000000000001 * _yScaling,
      73.66 * _xScaling,
      95.33000000000001 * _yScaling,
    );
    path.cubicTo(
      70.56 * _xScaling,
      102.03 * _yScaling,
      64.86 * _xScaling,
      107.83000000000001 * _yScaling,
      58.36 * _xScaling,
      109.53 * _yScaling,
    );
    path.cubicTo(
      51.86 * _xScaling,
      111.23 * _yScaling,
      44.36 * _xScaling,
      108.73 * _yScaling,
      35.76 * _xScaling,
      106.83000000000001 * _yScaling,
    );
    path.cubicTo(
      27.06 * _xScaling,
      104.83000000000001 * _yScaling,
      17.259999999999998 * _xScaling,
      103.33000000000001 * _yScaling,
      11.86 * _xScaling,
      97.63 * _yScaling,
    );
    path.cubicTo(
      6.460000000000001 * _xScaling,
      91.83 * _yScaling,
      5.460000000000001 * _xScaling,
      81.83 * _yScaling,
      9.259999999999998 * _xScaling,
      74.73 * _yScaling,
    );
    path.cubicTo(
      13.059999999999995 * _xScaling,
      67.73 * _yScaling,
      21.659999999999997 * _xScaling,
      63.63 * _yScaling,
      28.759999999999998 * _xScaling,
      57.63 * _yScaling,
    );
    path.cubicTo(
      35.76 * _xScaling,
      51.53 * _yScaling,
      41.26 * _xScaling,
      43.53 * _yScaling,
      48.559999999999995 * _xScaling,
      41.330000000000005 * _yScaling,
    );
    path.cubicTo(
      55.959999999999994 * _xScaling,
      39.13 * _yScaling,
      65.06 * _xScaling,
      42.830000000000005 * _yScaling,
      70.36 * _xScaling,
      49.230000000000004 * _yScaling,
    );
    path.cubicTo(
      70.36 * _xScaling,
      49.230000000000004 * _yScaling,
      70.36 * _xScaling,
      49.230000000000004 * _yScaling,
      70.36 * _xScaling,
      49.230000000000004 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
