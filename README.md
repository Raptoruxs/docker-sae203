**Equipe :** 18
**Année :** 2021-2022
**IUT Le Havre - SAE 2.03**
--------------------------------------------------------------------------------------
# Instruction d'installation

* Vérifier que docker est installé :
 ```bash
 docker --version
 ```
 * Cloner le référentiel :
 ```bash
 git clone https://github.com/Raptoruxs/docker-sae203.git
 ```
* Aller dans le dossier du référentiel :
```bash
 cd docker-sae203
 ```
* Construire l'image décrite dans le dockerfile avec cette commande : 
```bash
docker build -t <choisir-un-nom> .
 ```
* Lancer l'image :
```bash
docker run -d -p 8080:80 <nom-de-l'image-choisie>
 ```
* Vérifier que le conteneur associé est actif : 
```bash
docker ps
 ```
* La sortie de cette commande devrait être similaire à ceci : (la commande sera surement différente)
```shell
CONTAINER ID   IMAGE          COMMAND              CREATED          STATUS          PORTS                                   NAMES
b8f8f406b03c   dockersae   "httpd-foreground"   30 minutes ago   Up 30 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   dockersae
```
* Enfin, vous pouvez arrêter le conteneur avec cette commande :
```bash
docker stop b8f8f406b03c
```
