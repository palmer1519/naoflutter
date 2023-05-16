import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Politica de privacidad'),
      ),
      body: const Markdown(
        data: '''
ISMA-8 ("nosotros" o "nuestro") opera la aplicación móvil NAO y el sitio web isma.com (denominados conjuntamente el "Servicio").

Esta página le informa de nuestras políticas relativas a la recopilación, uso y divulgación de datos personales cuando utiliza nuestro Servicio y de las opciones que tiene asociadas a esos datos.

Al utilizar el Servicio, usted acepta la recogida y el uso de información de acuerdo con esta política.

1. Recogida y uso de la información

Recogemos diferentes tipos de información con diversos fines para proporcionarle y mejorar nuestro Servicio.

Tipos de datos recogidos:

a. Datos personales

Al utilizar nuestro Servicio, es posible que le pidamos que nos proporcione cierta información de identificación personal que pueda utilizarse para ponernos en contacto con usted o identificarle ("Datos personales"). La información personal identificable puede incluir, entre otros, los siguientes datos

- Dirección de correo electrónico
- Nombre y apellidos
- Cookies y datos de uso

b. Datos de uso

También podemos recopilar información que su navegador envía cada vez que visita nuestro Servicio o cuando accede al Servicio por o a través de un dispositivo móvil ("Datos de uso").

2. Uso de los datos

ISMA utiliza los datos recogidos para diversos fines:

- Para proporcionar y mantener nuestro Servicio
- Para notificarle cambios en nuestro Servicio
- Para permitirle participar en las funciones interactivas de nuestro Servicio cuando usted decida hacerlo
- Proporcionar asistencia al cliente
- Recopilar análisis o información valiosa para mejorar nuestro Servicio.
- Para supervisar el uso de nuestro Servicio
- Para detectar, prevenir y solucionar problemas técnicos

3. Divulgación de datos

Podemos revelar sus Datos Personales si creemos de buena fe que dicha acción es necesaria para:

- Cumplir con una obligación legal
- Proteger y defender los derechos o la propiedad de ISMA
- Prevenir o investigar posibles irregularidades en relación con el Servicio
- Proteger la seguridad personal de los usuarios del Servicio o del público en general
- Proteger frente a la responsabilidad legal

4. Seguridad de los datos

La seguridad de sus datos es importante para nosotros, pero recuerde que ningún método de transmisión a través de Internet, o método de almacenamiento electrónico, es 100% seguro. Aunque nos esforzamos por utilizar medios comercialmente aceptables para proteger sus Datos Personales, no podemos garantizar su seguridad absoluta.

5. Enlaces a otros sitios

Nuestro Servicio puede contener enlaces a otros sitios que no son operados por nosotros. Si hace clic en un enlace de terceros, será dirigido al sitio de ese tercero.
''',
      ),
    );
  }
}
