
import 'package:flutter/material.dart';

const appColor = Colors.white;
const itemColor = Color(0xFFE88216);

contentButtonStyle() {
  return const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFFFFD700),
          Color(0xFFFFAC1C),
        ],
      ));
}

contentButtonStyle2() {
  return const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xFF606060),
          Color(0xFF383838),
        ],
      ));
}

contentButtonWithOpacity() {
  return BoxDecoration(
      borderRadius: const BorderRadius.all(
        Radius.circular(50.0),
      ),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          const Color(0xFF8965E3).withOpacity(0.3),
          const Color(0xFF6A5AD0).withOpacity(0.3),
        ],
      ));
}

trialButtonStyle() {
  return const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    color: Color(0xFF0F79AF),
  );
}

googleButtonStyle() {
  return const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Colors.white,
  );
}

ChipButtonStyle() {
  return const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(50.0),
    ),
    color: Color(0xFFFE9C5E),
  );
}

otherButton() {
  return const BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    color: Color(0xFF6DD8D2),
  );
}

borderButton() {
  return BoxDecoration(
    borderRadius: const BorderRadius.all(
      Radius.circular(10.0),
    ),
    border: Border.all(color: const Color(0xFF6DD8D2)),
  );
}
