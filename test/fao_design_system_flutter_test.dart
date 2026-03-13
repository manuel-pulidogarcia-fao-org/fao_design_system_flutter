import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

void main() {
  test('FaoColors primary is correct', () {
    expect(FaoColors.primary, const Color(0xFF116BAC));
  });

  test('FaoSdgColors forSdg returns correct color', () {
    expect(FaoSdgColors.forSdg(1), FaoSdgColors.sdg1);
    expect(FaoSdgColors.forSdg(17), FaoSdgColors.sdg17);
  });

  test('FaoBreakpoints values', () {
    expect(FaoBreakpoints.sm, 576);
    expect(FaoBreakpoints.containerMax, 1140);
  });
}
