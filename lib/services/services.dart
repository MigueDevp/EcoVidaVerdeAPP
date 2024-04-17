import 'package:cloud_firestore/cloud_firestore.dart';

//TRAER DATOS DE FIREBASE
FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getObjetivo() async {
  List objetivo = [];
  CollectionReference collectionReferenceObjetivo = db.collection('lecturas');

  QuerySnapshot queryObjetivo = await collectionReferenceObjetivo.get();

  // ignore: avoid_function_literals_in_foreach_calls
  queryObjetivo.docs.forEach((documento) {

    final Map<String, dynamic> data = documento.data() as Map<String, dynamic>;
    final meta = {
      "Lectura": data['Lectura'],
      "Planta": data['Planta'],
    };
    objetivo.add(meta);
  });

  return objetivo;
}

//ACTUALIZAR LA BD
Future<void> updateLectura(String documentoId, int nuevaLectura, int nuevaPlanta) async {
  await db.collection('lecturas').doc(documentoId).set({
    'Lectura': nuevaLectura,
    'Planta': nuevaPlanta,
  });
}
