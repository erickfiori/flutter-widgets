//Export para rotas. Para utilizá-los, importe este arquivo no destino desejado.
//Finalidade: Centralizar todas as telas(rotas) em um só arquivo.
export 'package:useful_widgets/screens/home.dart';
export 'package:useful_widgets/screens/second_page.dart';

// Método para simplificar o uso do Navigator.push. Defina o contexto e Widget para rota destino.
import 'package:flutter/material.dart';

navigateTo(BuildContext context, Widget toPage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => toPage));
}
