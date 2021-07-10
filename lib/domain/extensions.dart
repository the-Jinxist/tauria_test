extension PNG on String {
  String toPng() {
    return 'assets/images/$this.png';
  }

  String toSVG() {
    return 'assets/images/$this.svg';
  }
}
