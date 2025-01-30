void analyserLettre(String lettre) {
  // Protocole Alpha
  int longueur = lettre.length;
  print("Longueur totale du message : $longueur caractères");

  List<String> mots = lettre.split(RegExp(r'\s+'));
  // Décompose par espaces (inclut multi-espaces)
  print("Liste des mots : $mots");

  Map<String, int> frequences = {};
  for (String mot in mots) {
    String motNet = mot.replaceAll(RegExp(r'[^\w]'), '');
    // Nettoie ponctuation
    if (motNet.isNotEmpty) {
      frequences[motNet] = (frequences[motNet] ?? 0) + 1;
    }
  }
  print("Fréquences des mots : $frequences");

  // Protocole Beta
  String miroir = lettre.split('').reversed.join('');
  print("Miroir de la lettre : $miroir");

  String lettreTransformee =
      lettre.replaceAllMapped(RegExp(r'\b[Aa]gent\b'), (match) {
    String original = math.group(0)!;
    if (original[0]![0]).toUpperCase() {
      return "Espion";
    } else {
      return "espion";
    }
  });
  print("Lettre transformée : $lettreTransformee");
}
  // Protocole Gamma