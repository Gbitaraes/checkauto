import 'package:flutter/material.dart';
import 'package:project_checkauto/components/extras.dart';

class InspectionPage extends StatefulWidget {
  const InspectionPage({super.key});

  @override
  State<InspectionPage> createState() => _InspectionPageState();
}

class _InspectionPageState extends State<InspectionPage> {
  bool value = true;
  void changevalue(bool newvalue) {
    setState(() {
      value = newvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Colors.red,
      title: const Text(
        "Itens do Veículo",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
    return Scaffold(
        appBar: appBar,
        body: Center(
          child: Container(
            height: 783,
            width: 410,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3)),
            child: ListView(
              children: [
                const Padding(padding: EdgeInsets.all(5.0)),
                const VehicleKit('Antena', false),
                const VehicleKit('Chave reserva', false),
                const VehicleKit('Documento', false),
                const VehicleKit('Manual', false),
                const VehicleKit('Tapetes', false),
                const VehicleKit('Extintor', false),
                const VehicleKit('Acendedor de cigarros', false),
                const VehicleKit('Chave de roda', false),
                const VehicleKit('Macaco', false),
                const VehicleKit('Estepe', false),
                const VehicleKit('Triângulo', false),
                const VehicleKit('Segredo de roda', false),
                const VehicleKit('Ferramentas', false),
                const VehicleKit('Pertences/Outros', false),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text('Próximo'),
                )
              ],
            ),
          ),
        ));
  }
}
