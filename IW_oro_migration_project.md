# Projet EII 5 - Migration OroCommerce vers Kubernetes

**Bloc RNCP** : EII 5 - Clusterisation de conteneurs  
**Modalité** : Projet en groupe (2 à 4 étudiants)  
---

## Objectif

Migrer l'application **OroCommerce Demo** (https://github.com/oroinc/docker-demo) depuis Docker Compose vers Kubernetes en utilisant Helm Charts.

---

## Critères d'Évaluation

### Critère 1 : Exploiter et surveiller l'activité du système (Coeff. 1)
- Maintenir un flux de données en temps réel
- Mettre en place des outils de monitoring
- Administrer les données selon les normes

### Critère 2 : Optimiser l'exploitation des données (Coeff. 2)
- Adapter la visualisation des données
- Optimiser les ressources (écoconception)
- Superviser la répartition de charge

---

## Livrables

### 1. Infrastructure
- **Helm Charts** complets pour tous les composants
OPTIONNEL: - **Auto-scaling** configuré (HPA) 
- **Monitoring** avec Prometheus/Grafana
OPTIONNEL: - Application **fonctionnelle** en haute disponibilité

### 2. Documentation 
- Architecture Kubernetes avec diagrammes
- Guide d'installation
- Analyse comparative avant/après

---

## Composants à Migrer

- **Frontend** : Nginx (Deployment + Service)
- **Backend** : PHP-FPM (Deployment + HPA)
- **Database** : MySQL (StatefulSet + PVC)
- **Cache** : Redis (StatefulSet)
- **Search** : Elasticsearch (StatefulSet)
- **Monitoring** : Prometheus + Grafana

---

## Contraintes Techniques

- Kubernetes 1.25+
- Helm 3.x
- Haute disponibilité OPTIONNELLE
- SSL/TLS configuré
- Secrets pour les mots de passe
- Resource limits définis