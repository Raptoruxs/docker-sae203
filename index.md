# SAE 2.03 - Installation de services réseaux

---

## Soutenance

Lors de la SAE 2.03, qui consiste à l'installation d'un services réseaux, nous nous sommes réunis en brainstorming afin de débattre sur les différentes idées de projet que nous allions le créé ainsi que comment nous allions le réaliser.

Tout d'abord, nous avons installé l'application Docker qui permet de créer des containers composés d'images ou d'autres containers.
Une image contient des containers. Ainsi, l'image que nous créerons pourra comporter le DockerFile qui nous permettra de créer le site.

---

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

### Création du DockerFile

* On a crée un fichier DockerFile, dans lequel nous insérons ce informtions ci-dessous :

```bash
FROM debian:latest
```

Cette ligne ci-dessus permet tout d'abord de définir à partir d'où l'image prend racine.

```bash
# # Update system, Install software
RUN apt-get update && \
    apt-get -y install && \
    apt-get install proftpd
```

* Ces lignes ci-dessus permettent dans un premier temps, lors de l'execution de l'image, de mettre à jour le système d'exploitation de l'image, pour que tout soit à jour avant d'installer de nouvelles applications. La dernière ligne permet d'installer proftpd, un outil qui nous permet de crée un serveur ftp sur le debian.

## Pourquoi ProFTPD ?
Nous avons décidé d'utiliser l'outil ProFTPD, car après plusieurs recherches, ProFTPD fait partie des outils les plus utilisés pour créer un serveur ftp avec VsFTPd et Pure-FTPd. Parmis ces trois-là nous avons prit ProFTPD car il nous paraissez le plus simple.

```bash
# Config FTP server

RUN addgroup ftpgroup && \
    adduser seb --home /ftpshare && \
    adduser seb ftpgroup && \
    chmod -R 1777 /ftpshare/ && \
    service proftpd restart
```

* Ces lignes permettent de configurer le serveur FTP dans la mesure du possible.
 * Dans un premier temps, l'éxécution de l'image va donc crée le group d'utilisateurs "ftpgroup" qui contiendra ceux qui auront accès spécifiquement au serveur FTP.
 * Ensuite elle va crée l'utilisateur "seb" avec comme dossier par défaut "/ftpshare", puis elle donne les bonnes permissions et redémarre l'outil proftpd.

```bash
# EXPOSE
EXPOSE 80
```

* Cette dernière ligne de notre Dockerfile permet de définir le port d'écoute, ici sur 80.

---

## Point sur le client

Filezilla est un client FTP (File Transfer Protocol), il permet de se connecter a des serveurs a distance comme des serveurs web afin de mettre en ligne son site. Il permet de partager des fichiers entre différentes machines.

![Screen Filezilla](https://zupimages.net/up/22/21/fg5j.png)

   *Capture d'écran du menu de Filezilla*


* Dans le **cadre rouge**, on peut voir l'espace où l'on peut renseigner les **informations pour se connecter au serveur**.
  * Comme le nom de l'hôte
  * Le nom de l'utilisateur
  * Le mot de passe
  * Le port du serveur

* Dans le **cadre orange**, on peut **voir les fichiers de votre machine**.
  * **En haut**, on voit les **chemins des répertoires de votre machine**.
  * **En bas**, vous apperceverez les **dossiers et fichiers** qui se trouvent **dans le dossier sélectionné** en haut.

* Dans le **cadre vert**, on **voit les fichiers du serveur** sur lequel nous nous sommes connectés.
  * **En haut**, on voit les **chemins des répertoires du serveur**
  * **En bas**, vous verrez les **dossiers et fichiers** qui se trouvent **dans le dossier sélectionné** en haut.
 
* Dans le **cadre bleu**, vous pourrez voir les **transactions réalisées entre votre machine et le serveur** auquel vous êtes connecté.


![Logo Filezilla](https://comptoir-du-libre.org/img/files/Softwares/64/photo/avatar/Software_logo_FileZilla.png)

     *Icône de Filezilla*

---

## Utilisation du programme

Filezilla est un logiciel dit FTP, c'est-à-dire qu'il permet de transferer des fichiers d'une machine local à un serveur distant.

* Le serveur distant, ici un serveur FTP, que nous avons configuré par nos soins, sera créer par l'outil Pro FTPD intégré à l'image, permettant ainsi d'envoyer des fichiers de manière aléatoire sur le serveur pour finalement pouvoir les recevoir via une autre machine.

---

   ***Equipe n°18 - IUT du Havre - 2021/2022***
