import 'package:flutter/material.dart';
import 'package:project_checkauto/screens/inspection_page.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckAutoApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red,
        title: const Text(
          'CheckAuto',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 783,
            width: 410,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // INFO CLIENTE
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: clientNameController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Nome do Cliente",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),

                // INFO CARRO
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: carModelController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Veículo",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),

                // PLACA CARRO
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: carPlateController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Placa do Veículo",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),

                // COR DO CARRO
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: colorController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Cor do veículo",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),

                // LOCALIZAÇÃO
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: locationController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Localização",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),

                // DESTINO FINAL
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: destinationController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Destino Final",
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),

                // OBSERVAÇÕES
                const TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: "Observações",
                    border: OutlineInputBorder(),
                  ),
                ),

                // BOTÃO
                OverflowBar(
                  spacing: 8.0,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InspectionPage(),
                          ),
                        );
                      },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Validações dos campos
TextEditingController clientNameController = TextEditingController();
TextEditingController carModelController = TextEditingController();
TextEditingController carPlateController = TextEditingController();
TextEditingController colorController = TextEditingController();
TextEditingController locationController = TextEditingController();
TextEditingController destinationController = TextEditingController();
