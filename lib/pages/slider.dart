import 'package:flutter/material.dart';

class CustomTrackShape extends SliderTrackShape {
  final Gradient activeGradient;
  final Color inactiveColor;

  CustomTrackShape({
    required this.activeGradient,
    required this.inactiveColor,
  });

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset? offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    return Rect.fromLTWH(
      offset!.dx,
      offset.dy + (parentBox.size.height - sliderTheme.trackHeight!) / 2,
      parentBox.size.width,
      sliderTheme.trackHeight!,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    Offset? thumbCenter = Offset.zero,
    bool isEnabled = false,
    bool isDiscrete = false,
    TextDirection? textDirection,
    Offset? secondaryOffset,
  }) {
    final rect = getPreferredRect(
      parentBox: parentBox,
      sliderTheme: sliderTheme,
      offset: offset,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final paint = Paint();

    if (isEnabled) {
      paint.shader = activeGradient.createShader(rect);
    } else {
      paint.color = inactiveColor;
    }

    final rightOffset = thumbCenter!.dx +
        (sliderTheme.thumbShape!.getPreferredSize(false, false).width / 2);
    final activeRect =
        Rect.fromLTRB(rect.left, rect.top, rightOffset, rect.bottom);
    final inactiveRect =
        Rect.fromLTRB(rightOffset, rect.top, rect.right, rect.bottom);

    if (isEnabled) {
      context.canvas.drawRRect(
          RRect.fromRectAndRadius(
              activeRect, Radius.circular(sliderTheme.trackHeight! / 2)),
          paint);
      context.canvas.drawRRect(
          RRect.fromRectAndRadius(
              inactiveRect, Radius.circular(sliderTheme.trackHeight! / 2)),
          Paint()..color = inactiveColor);
    } else {
      context.canvas.drawRRect(
          RRect.fromRectAndRadius(
              activeRect, Radius.circular(sliderTheme.trackHeight! / 2)),
          Paint()..color = inactiveColor);
      context.canvas.drawRRect(
          RRect.fromRectAndRadius(
              rect, Radius.circular(sliderTheme.trackHeight! / 2)),
          paint);
    }
  }
}

class GradientSlider extends StatefulWidget {
  final double initialValue;
  final double minValue;
  final double maxValue;
  final int divisions;
  final ValueChanged<double>? onChanged;

  GradientSlider({
    required this.initialValue,
    required this.minValue,
    required this.maxValue,
    required this.divisions,
    this.onChanged,
  });

  @override
  _GradientSliderState createState() => _GradientSliderState();
}

class _GradientSliderState extends State<GradientSlider> {
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        // thumbColor: Colors.black,
        trackHeight: 15,
        // overlayColor: Colors.black,
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: 9.0,
        ),
        trackShape: CustomTrackShape(
          activeGradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              Color(0xFFDECDFF),
              Color(0xFFBCECFF),
            ],
          ),
          inactiveColor: Color(0xFFF6F6F6),
        ),
        // overlayShape: RoundSliderOverlayShape(overlayRadius: 0), // 직선을 그리도록 설정
      ),
      child: Slider(
        value: _sliderValue,
        onChanged: (newValue) {
          setState(() {
            _sliderValue = newValue;
            if (widget.onChanged != null) {
              widget.onChanged!(_sliderValue);
            }
          });
        },
        // label: '${_sliderValue.toInt()}%',
        min: widget.minValue,
        max: widget.maxValue,
        divisions: widget.divisions,
        activeColor: Colors.white, // 활성화된 부분의 색상
        inactiveColor: Colors.white, // 비활성화된 부분의 색상
      ),
    );
  }
}
