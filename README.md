# Check-Log-Error-NAgios-PLugin

Nagios plugin to check Linux Log Errors

# check_log_error.bash

PLugin nagios permettant de récupérer une erreur spécifique dans un fichier de log d'un système d'exploitation Linux

## Getting Started

Vous pouvez utiliser ce programme afin d'analyser une erreur spécifique dans le fichier de log de vos serveurs via l'outil de supervision Nagios

Le plugin détecte le nombre d'occurrences de l'erreur dans le fichier journal et affiche ce décompte

### Prerequisites

L'utilisation du programme nécessite l'acquisition d'un système d'exploitation Linux : Debian / CentOS / Ubuntu...

Le programme a été conçu avec le language Bash

## Installing & Using

1- Copiez le programme dans le répertoire de votre choix ou dans le dossier "plugins" de Nagios

2- Configurer la commande et le service Nagios (Voir notice)

3- Vous pouvez appliquer vos propres paramètres en modifiant le script

## Running the tests

Le programme a été testé sur l'OS Debian 64bits

## Versioning

Version 4.0

## Authors

Jean - Samuel BOURGUIT 

Administrateur Infrastuture et Cloud

## License
Copyright 2023 Jean - Samuel BOURGUIT

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
