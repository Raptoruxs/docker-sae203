# SAE 2.03 - Installation de services réseaux

## Soutenance

Lors de la SAE 2.03, qui consiste à l'installation d'un services réseaux, nous nous sommes réunis en brainstorming afin de débattre sur les différentes idées de projet que nous allions le créé ainsi que comment nous allions le réaliser.

Tout d'abord, nous avons installé l'application Docker qui permet de créer des containers composés d'images ou d'autres containers.
Une image contient des containers. Ainsi, l'image que nous créerons pourra comporter le DockerFile qui nous permettra de créer le site.

## Installation

### Docker

* Dans un premier temps, nous avons installer Docker sur le [site de Docker](https://www.docker.com/products/docker-desktop/, "Site de Docker").
  * Vous suivrez les étapes de l'installation.

  * A la fin, l'application vous affichera une erreur.
  L'application vous demandera d'installer Windows sous Linux afin d'obtenir une console Linux via Windows.
  
  Vous rentrerez cette commande dans votre console :
  
  ```bash
  wsl --set-default-version 2
  ```
  
  * L'application vous demandera alors de redémarrer l'ordinateur.

### Installation d'un truc

* On a installé Filezilla avec la commande suivante :

```bash
apt-get install Filezilla
```

# Point sur le site

## Utilisation du site

---

***Equipe n°18 - IUT du Havre - 2021/2022***
