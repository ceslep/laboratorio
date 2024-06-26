import 'package:flutter/material.dart';
import 'package:laboratorio/pages/crear_examen.dart';
import 'package:laboratorio/pages/pacientes.dart';
import 'package:laboratorio/widgets/date_picker.dart';

class FloatingActionButtonHome extends StatelessWidget {
  const FloatingActionButtonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 0,
          backgroundColor: Colors.amber,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CrearExamen(),
                ));
          },
          tooltip: 'Agregar Examen',
          child: const Icon(
            Icons.health_and_safety,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FloatingActionButton(
          heroTag: 1,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pacientes(),
                ));
          },
          tooltip: 'Agregar Paciente',
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}

class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
    required TextEditingController fechaController,
  }) : _fechaController = fechaController;

  final TextEditingController _fechaController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:
                buildDatePicker(context, _fechaController, 'Fecha de Exámenes'),
          ),
          SizedBox(
            height: 0.7 * MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/logo.png',
                      scale: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
