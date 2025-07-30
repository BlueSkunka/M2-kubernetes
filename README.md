# OROCOMMERCE

Groupe:
- SCHULER Kenza
- PERDRIX Olivier
- ROME Mathis
- SOMVEILLE Quentin

# Prérequis

Démarrer votre service Docker :
```shell
sudo service docker start
```

Démarrer le serveur minikube :
```shell
minikube start
```

Minikube avec les addons suivants :
```shell
minikube addons enable ingress
minikube addons enable metrics-server
```

Démarrer le tunnel Minikube : 
```shell
minikube tunnel
```

Modifier votre fichier `hosts` pour ajouter la configuration suivante :
```text
127.0.0.1   oro.demo
```

# Démarrer orocommerce

## Kubernetes classique

Se placer dans le dossier `kuboro/classic_version`, et exécuter la commande suivante :

```shell
bash apply-project.bash
```

Accéder à l'application via l'url `https://oro.demo`.

Pour vous connecter : 
# TODO !!!!!!!

```text
user : JESAISPLUSMATHISFAUTCHANGERICI
password : JESAISPLUSMATHISFAUTCHANGERICI
```
# TODO !!!!!!!

Pour arreter l'environnement, lancer la commande suivante :
```shell
bash delete-project.bash
```

## Helm Charts 

# TODO !!!!!!!
# TODO !!!!!!!
# TODO !!!!!!!

# Architecture 

```asci
+------------------------------------------+
|            OroCommerce Helm              |
+------------------------------------------+
                    |
        +----------+----------+
        |          |          |
   +----+----+ +---+----+ +--+---+
   | Frontend | |Backend | |  DB  |
   +----+----+ +---+----+ +--+---+
        |          |          |
   +----+----+ +---+----+ +--+---+
   |  Nginx   | |PHP-FPM | |PostgreSQL|
   |Deployment| |+ HPA   | |StatefulSet|
   +----+----+ +---+----+ +--+---+
        |          |          |
   +----+----+ +---+----+ +--+---+
   | Service  | |Consumer| | PVC  |
   +----+----+ +--------+ +------+
        |
   +----+----+
   | Ingress |
   +---------+

   +------------------------------------------+
   |            Monitoring Stack              |
   +------------------------------------------+
                    |
        +----------+----------+
        |                     |
   +----+----+          +----+----+
   |Prometheus|          | Grafana |
   +---------+          +---------+

   +------------------------------------------+
   |         Persistent Storage               |
   +------------------------------------------+
        |          |          |          |
   +----+----+ +---+----+ +--+---+ +----+----+
   | App PVC | |Cache PVC| |Public| |Private |
   +---------+ +---------+ | PVC  | | PVC   |
                          +-------+ +--------+

```
# Comparatif avant / après 

## Avant 
# TODO !!!!!!!

## Après 
# TODO !!!!!!!
