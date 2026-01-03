import 'package:flutter/material.dart';

class ColorItem {
  final String en;
  final String kuLatin;   // Kurmanji Latin
  final String kuArabic;  // Sorani Arabic
  final Color color;

  const ColorItem({
    required this.en,
    required this.kuLatin,
    required this.kuArabic,
    required this.color,
  });
}

const colorsData = <ColorItem>[
  ColorItem(en: 'Red',     kuLatin: 'Sor',        kuArabic: 'سور',    color: Color(0xFFE53935)),
  ColorItem(en: 'Blue',    kuLatin: 'Şîn',        kuArabic: 'شین',    color: Color(0xFF1E88E5)),
  ColorItem(en: 'Green',   kuLatin: 'Kesk',       kuArabic: 'سەوز',   color: Color(0xFF43A047)),
  ColorItem(en: 'Yellow',  kuLatin: 'Zer',        kuArabic: 'زەرد',   color: Color(0xFFFDD835)),
  ColorItem(en: 'Orange',  kuLatin: 'Porteqalî',  kuArabic: 'پرتەقاڵی', color: Color(0xFFFB8C00)),
  ColorItem(en: 'Purple',  kuLatin: 'Mor',        kuArabic: 'مۆر',    color: Color(0xFF8E24AA)),
  ColorItem(en: 'Pink',    kuLatin: 'Pembeyî',    kuArabic: 'پەمبەیی', color: Color(0xFFD81B60)),
  ColorItem(en: 'Brown',   kuLatin: 'Qehweyî',    kuArabic: 'قاوەیی', color: Color(0xFF6D4C41)),
  ColorItem(en: 'Black',   kuLatin: 'Reş',        kuArabic: 'ڕەش',    color: Color(0xFF212121)),
  ColorItem(en: 'White',   kuLatin: 'Spî',        kuArabic: 'سپی',    color: Color(0xFFF5F5F5)),
  ColorItem(en: 'Gray',    kuLatin: 'Boz',        kuArabic: 'بۆز',    color: Color(0xFF9E9E9E)),
  ColorItem(en: 'Turquoise', kuLatin: 'Fîrûze',   kuArabic: 'فیروزە', color: Color(0xFF26A69A)),
];
