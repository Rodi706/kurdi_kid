class NumberItem {
  final int value;
  final String kuLatin;
  final String kuArabic;
  final String audioAsset;

  const NumberItem({
    required this.value,
    required this.kuLatin,
    required this.kuArabic,
    required this.audioAsset,
  });
}

const numbersData = <NumberItem>[
  // 1–10
  NumberItem(value: 1, kuLatin: 'Yek', kuArabic: 'یەک', audioAsset: 'assets/audio/numbers/1.mp3'),
  NumberItem(value: 2, kuLatin: 'Du', kuArabic: 'دوو', audioAsset: 'assets/audio/numbers/2.mp3'),
  NumberItem(value: 3, kuLatin: 'Sê', kuArabic: 'سێ', audioAsset: 'assets/audio/numbers/3.mp3'),
  NumberItem(value: 4, kuLatin: 'Çar', kuArabic: 'چوار', audioAsset: 'assets/audio/numbers/4.mp3'),
  NumberItem(value: 5, kuLatin: 'Pênc', kuArabic: 'پێنج', audioAsset: 'assets/audio/numbers/5.mp3'),
  NumberItem(value: 6, kuLatin: 'Şeş', kuArabic: 'شەش', audioAsset: 'assets/audio/numbers/6.mp3'),
  NumberItem(value: 7, kuLatin: 'Heft', kuArabic: 'حەوت', audioAsset: 'assets/audio/numbers/7.mp3'),
  NumberItem(value: 8, kuLatin: 'Heşt', kuArabic: 'هەشت', audioAsset: 'assets/audio/numbers/8.mp3'),
  NumberItem(value: 9, kuLatin: 'Neh', kuArabic: 'نۆ', audioAsset: 'assets/audio/numbers/9.mp3'),
  NumberItem(value: 10, kuLatin: 'Deh', kuArabic: 'دە', audioAsset: 'assets/audio/numbers/10.mp3'),

  // 11–19
  NumberItem(value: 11, kuLatin: 'Yazdeh', kuArabic: 'یازدە', audioAsset: 'assets/audio/numbers/11.mp3'),
  NumberItem(value: 12, kuLatin: 'Duwazdeh', kuArabic: 'دوازدە', audioAsset: 'assets/audio/numbers/12.mp3'),
  NumberItem(value: 13, kuLatin: 'Sêzdeh', kuArabic: 'سێزدە', audioAsset: 'assets/audio/numbers/13.mp3'),
  NumberItem(value: 14, kuLatin: 'Çardeh', kuArabic: 'چواردە', audioAsset: 'assets/audio/numbers/14.mp3'),
  NumberItem(value: 15, kuLatin: 'Panzdeh', kuArabic: 'پانزدە', audioAsset: 'assets/audio/numbers/15.mp3'),
  NumberItem(value: 16, kuLatin: 'Şanzdeh', kuArabic: 'شانزدە', audioAsset: 'assets/audio/numbers/16.mp3'),
  NumberItem(value: 17, kuLatin: 'Hevdeh', kuArabic: 'حەڤدە', audioAsset: 'assets/audio/numbers/17.mp3'),
  NumberItem(value: 18, kuLatin: 'Hejdeh', kuArabic: 'هەژدە', audioAsset: 'assets/audio/numbers/18.mp3'),
  NumberItem(value: 19, kuLatin: 'Nozdeh', kuArabic: 'نۆزدە', audioAsset: 'assets/audio/numbers/19.mp3'),

  // Tens
  NumberItem(value: 20, kuLatin: 'Bîst', kuArabic: 'بیست', audioAsset: 'assets/audio/numbers/20.mp3'),
  NumberItem(value: 30, kuLatin: 'Sî', kuArabic: 'سی', audioAsset: 'assets/audio/numbers/30.mp3'),
  NumberItem(value: 40, kuLatin: 'Çil', kuArabic: 'چل', audioAsset: 'assets/audio/numbers/40.mp3'),
  NumberItem(value: 50, kuLatin: 'Pêncî', kuArabic: 'پەنجا', audioAsset: 'assets/audio/numbers/50.mp3'),
  NumberItem(value: 60, kuLatin: 'Şêst', kuArabic: 'شەست', audioAsset: 'assets/audio/numbers/60.mp3'),
  NumberItem(value: 70, kuLatin: 'Heftê', kuArabic: 'حەفتا', audioAsset: 'assets/audio/numbers/70.mp3'),
  NumberItem(value: 80, kuLatin: 'Heştê', kuArabic: 'هەشتا', audioAsset: 'assets/audio/numbers/80.mp3'),
  NumberItem(value: 90, kuLatin: 'Nehvêd', kuArabic: 'نەوەد', audioAsset: 'assets/audio/numbers/90.mp3'),

  // 21–29
  NumberItem(value: 21, kuLatin: 'Bîst û yek', kuArabic: 'بیست و یەک', audioAsset: 'assets/audio/numbers/21.mp3'),
  NumberItem(value: 22, kuLatin: 'Bîst û du', kuArabic: 'بیست و دوو', audioAsset: 'assets/audio/numbers/22.mp3'),
  NumberItem(value: 23, kuLatin: 'Bîst û sê', kuArabic: 'بیست و سێ', audioAsset: 'assets/audio/numbers/23.mp3'),
  NumberItem(value: 24, kuLatin: 'Bîst û çar', kuArabic: 'بیست و چوار', audioAsset: 'assets/audio/numbers/24.mp3'),
  NumberItem(value: 25, kuLatin: 'Bîst û pênc', kuArabic: 'بیست و پێنج', audioAsset: 'assets/audio/numbers/25.mp3'),
  NumberItem(value: 26, kuLatin: 'Bîst û şeş', kuArabic: 'بیست و شەش', audioAsset: 'assets/audio/numbers/26.mp3'),
  NumberItem(value: 27, kuLatin: 'Bîst û heft', kuArabic: 'بیست و حەوت', audioAsset: 'assets/audio/numbers/27.mp3'),
  NumberItem(value: 28, kuLatin: 'Bîst û heşt', kuArabic: 'بیست و هەشت', audioAsset: 'assets/audio/numbers/28.mp3'),
  NumberItem(value: 29, kuLatin: 'Bîst û neh', kuArabic: 'بیست و نۆ', audioAsset: 'assets/audio/numbers/29.mp3'),

  // 31–39
  NumberItem(value: 31, kuLatin: 'Sî û yek', kuArabic: 'سی و یەک', audioAsset: 'assets/audio/numbers/31.mp3'),
  NumberItem(value: 32, kuLatin: 'Sî û du', kuArabic: 'سی و دوو', audioAsset: 'assets/audio/numbers/32.mp3'),
  NumberItem(value: 33, kuLatin: 'Sî û sê', kuArabic: 'سی و سێ', audioAsset: 'assets/audio/numbers/33.mp3'),
  NumberItem(value: 34, kuLatin: 'Sî û çar', kuArabic: 'سی و چوار', audioAsset: 'assets/audio/numbers/34.mp3'),
  NumberItem(value: 35, kuLatin: 'Sî û pênc', kuArabic: 'سی و پێنج', audioAsset: 'assets/audio/numbers/35.mp3'),
  NumberItem(value: 36, kuLatin: 'Sî û şeş', kuArabic: 'سی و شەش', audioAsset: 'assets/audio/numbers/36.mp3'),
  NumberItem(value: 37, kuLatin: 'Sî û heft', kuArabic: 'سی و حەوت', audioAsset: 'assets/audio/numbers/37.mp3'),
  NumberItem(value: 38, kuLatin: 'Sî û heşt', kuArabic: 'سی و هەشت', audioAsset: 'assets/audio/numbers/38.mp3'),
  NumberItem(value: 39, kuLatin: 'Sî û neh', kuArabic: 'سی و نۆ', audioAsset: 'assets/audio/numbers/39.mp3'),

  // 41–49
  NumberItem(value: 41, kuLatin: 'Çil û yek', kuArabic: 'چل و یەک', audioAsset: 'assets/audio/numbers/41.mp3'),
  NumberItem(value: 42, kuLatin: 'Çil û du', kuArabic: 'چل و دوو', audioAsset: 'assets/audio/numbers/42.mp3'),
  NumberItem(value: 43, kuLatin: 'Çil û sê', kuArabic: 'چل و سێ', audioAsset: 'assets/audio/numbers/43.mp3'),
  NumberItem(value: 44, kuLatin: 'Çil û çar', kuArabic: 'چل و چوار', audioAsset: 'assets/audio/numbers/44.mp3'),
  NumberItem(value: 45, kuLatin: 'Çil û pênc', kuArabic: 'چل و پێنج', audioAsset: 'assets/audio/numbers/45.mp3'),
  NumberItem(value: 46, kuLatin: 'Çil û şeş', kuArabic: 'چل و شەش', audioAsset: 'assets/audio/numbers/46.mp3'),
  NumberItem(value: 47, kuLatin: 'Çil û heft', kuArabic: 'چل و حەوت', audioAsset: 'assets/audio/numbers/47.mp3'),
  NumberItem(value: 48, kuLatin: 'Çil û heşt', kuArabic: 'چل و هەشت', audioAsset: 'assets/audio/numbers/48.mp3'),
  NumberItem(value: 49, kuLatin: 'Çil û neh', kuArabic: 'چل و نۆ', audioAsset: 'assets/audio/numbers/49.mp3'),

  // 51–59
  NumberItem(value: 51, kuLatin: 'Pêncî û yek', kuArabic: 'پەنجا و یەک', audioAsset: 'assets/audio/numbers/51.mp3'),
  NumberItem(value: 52, kuLatin: 'Pêncî û du', kuArabic: 'پەنجا و دوو', audioAsset: 'assets/audio/numbers/52.mp3'),
  NumberItem(value: 53, kuLatin: 'Pêncî û sê', kuArabic: 'پەنجا و سێ', audioAsset: 'assets/audio/numbers/53.mp3'),
  NumberItem(value: 54, kuLatin: 'Pêncî û çar', kuArabic: 'پەنجا و چوار', audioAsset: 'assets/audio/numbers/54.mp3'),
  NumberItem(value: 55, kuLatin: 'Pêncî û pênc', kuArabic: 'پەنجا و پێنج', audioAsset: 'assets/audio/numbers/55.mp3'),
  NumberItem(value: 56, kuLatin: 'Pêncî û şeş', kuArabic: 'پەنجا و شەش', audioAsset: 'assets/audio/numbers/56.mp3'),
  NumberItem(value: 57, kuLatin: 'Pêncî û heft', kuArabic: 'پەنجا و حەوت', audioAsset: 'assets/audio/numbers/57.mp3'),
  NumberItem(value: 58, kuLatin: 'Pêncî û heşt', kuArabic: 'پەنجا و هەشت', audioAsset: 'assets/audio/numbers/58.mp3'),
  NumberItem(value: 59, kuLatin: 'Pêncî û neh', kuArabic: 'پەنجا و نۆ', audioAsset: 'assets/audio/numbers/59.mp3'),

  // 61–69
  NumberItem(value: 61, kuLatin: 'Şêst û yek', kuArabic: 'شەست و یەک', audioAsset: 'assets/audio/numbers/61.mp3'),
  NumberItem(value: 62, kuLatin: 'Şêst û du', kuArabic: 'شەست و دوو', audioAsset: 'assets/audio/numbers/62.mp3'),
  NumberItem(value: 63, kuLatin: 'Şêst û sê', kuArabic: 'شەست و سێ', audioAsset: 'assets/audio/numbers/63.mp3'),
  NumberItem(value: 64, kuLatin: 'Şêst û çar', kuArabic: 'شەست و چوار', audioAsset: 'assets/audio/numbers/64.mp3'),
  NumberItem(value: 65, kuLatin: 'Şêst û pênc', kuArabic: 'شەست و پێنج', audioAsset: 'assets/audio/numbers/65.mp3'),
  NumberItem(value: 66, kuLatin: 'Şêst û şeş', kuArabic: 'شەست و شەش', audioAsset: 'assets/audio/numbers/66.mp3'),
  NumberItem(value: 67, kuLatin: 'Şêst û heft', kuArabic: 'شەست و حەوت', audioAsset: 'assets/audio/numbers/67.mp3'),
  NumberItem(value: 68, kuLatin: 'Şêst û heşt', kuArabic: 'شەست و هەشت', audioAsset: 'assets/audio/numbers/68.mp3'),
  NumberItem(value: 69, kuLatin: 'Şêst û neh', kuArabic: 'شەست و نۆ', audioAsset: 'assets/audio/numbers/69.mp3'),

  // 71–79
  NumberItem(value: 71, kuLatin: 'Heftê û yek', kuArabic: 'حەفتا و یەک', audioAsset: 'assets/audio/numbers/71.mp3'),
  NumberItem(value: 72, kuLatin: 'Heftê û du', kuArabic: 'حەفتا و دوو', audioAsset: 'assets/audio/numbers/72.mp3'),
  NumberItem(value: 73, kuLatin: 'Heftê û sê', kuArabic: 'حەفتا و سێ', audioAsset: 'assets/audio/numbers/73.mp3'),
  NumberItem(value: 74, kuLatin: 'Heftê û çar', kuArabic: 'حەفتا و چوار', audioAsset: 'assets/audio/numbers/74.mp3'),
  NumberItem(value: 75, kuLatin: 'Heftê û pênc', kuArabic: 'حەفتا و پێنج', audioAsset: 'assets/audio/numbers/75.mp3'),
  NumberItem(value: 76, kuLatin: 'Heftê û şeş', kuArabic: 'حەفتا و شەش', audioAsset: 'assets/audio/numbers/76.mp3'),
  NumberItem(value: 77, kuLatin: 'Heftê û heft', kuArabic: 'حەفتا و حەوت', audioAsset: 'assets/audio/numbers/77.mp3'),
  NumberItem(value: 78, kuLatin: 'Heftê û heşt', kuArabic: 'حەفتا و هەشت', audioAsset: 'assets/audio/numbers/78.mp3'),
  NumberItem(value: 79, kuLatin: 'Heftê û neh', kuArabic: 'حەفتا و نۆ', audioAsset: 'assets/audio/numbers/79.mp3'),

  // 81–89
  NumberItem(value: 81, kuLatin: 'Heştê û yek', kuArabic: 'هەشتا و یەک', audioAsset: 'assets/audio/numbers/81.mp3'),
  NumberItem(value: 82, kuLatin: 'Heştê û du', kuArabic: 'هەشتا و دوو', audioAsset: 'assets/audio/numbers/82.mp3'),
  NumberItem(value: 83, kuLatin: 'Heştê û sê', kuArabic: 'هەشتا و سێ', audioAsset: 'assets/audio/numbers/83.mp3'),
  NumberItem(value: 84, kuLatin: 'Heştê û çar', kuArabic: 'هەشتا و چوار', audioAsset: 'assets/audio/numbers/84.mp3'),
  NumberItem(value: 85, kuLatin: 'Heştê û pênc', kuArabic: 'هەشتا و پێنج', audioAsset: 'assets/audio/numbers/85.mp3'),
  NumberItem(value: 86, kuLatin: 'Heştê û şeş', kuArabic: 'هەشتا و شەش', audioAsset: 'assets/audio/numbers/86.mp3'),
  NumberItem(value: 87, kuLatin: 'Heştê û heft', kuArabic: 'هەشتا و حەوت', audioAsset: 'assets/audio/numbers/87.mp3'),
  NumberItem(value: 88, kuLatin: 'Heştê û heşt', kuArabic: 'هەشتا و هەشت', audioAsset: 'assets/audio/numbers/88.mp3'),
  NumberItem(value: 89, kuLatin: 'Heştê û neh', kuArabic: 'هەشتا و نۆ', audioAsset: 'assets/audio/numbers/89.mp3'),

  // 91–99
  NumberItem(value: 91, kuLatin: 'Nehvêd û yek', kuArabic: 'نەوەد و یەک', audioAsset: 'assets/audio/numbers/91.mp3'),
  NumberItem(value: 92, kuLatin: 'Nehvêd û du', kuArabic: 'نەوەد و دوو', audioAsset: 'assets/audio/numbers/92.mp3'),
  NumberItem(value: 93, kuLatin: 'Nehvêd û sê', kuArabic: 'نەوەد و سێ', audioAsset: 'assets/audio/numbers/93.mp3'),
  NumberItem(value: 94, kuLatin: 'Nehvêd û çar', kuArabic: 'نەوەد و چوار', audioAsset: 'assets/audio/numbers/94.mp3'),
  NumberItem(value: 95, kuLatin: 'Nehvêd û pênc', kuArabic: 'نەوەد و پێنج', audioAsset: 'assets/audio/numbers/95.mp3'),
  NumberItem(value: 96, kuLatin: 'Nehvêd û şeş', kuArabic: 'نەوەد و شەش', audioAsset: 'assets/audio/numbers/96.mp3'),
  NumberItem(value: 97, kuLatin: 'Nehvêd û heft', kuArabic: 'نەوەد و حەوت', audioAsset: 'assets/audio/numbers/97.mp3'),
  NumberItem(value: 98, kuLatin: 'Nehvêd û heşt', kuArabic: 'نەوەد و هەشت', audioAsset: 'assets/audio/numbers/98.mp3'),
  NumberItem(value: 99, kuLatin: 'Nehvêd û neh', kuArabic: 'نەوەد و نۆ', audioAsset: 'assets/audio/numbers/99.mp3'),

  // 100
  NumberItem(value: 100, kuLatin: 'Sed', kuArabic: 'سەد', audioAsset: 'assets/audio/numbers/100.mp3'),
];

