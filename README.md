**Equipe :** 18

**Année :** 2021-2022

**IUT Le Havre - Cours GIT**

---
# Compte rendu SAE 2.03 - Installation de services réseaux

* Quelque chose d’intéressant qui vient de se passer est que le référentiel a maintenant deux branches, la branche ***gh-pages*** (où nous aurons le contenu Web) et la branche principale ***main*** (où nous continuons à avoir notre code)

* Maintenant que nous avons la nouvelle branche ***gh-pages*** dans le référentiel distant sur github, ce que nous devons faire est de la mettre à jour dans notre répertoire local. Pour ce faire :
  * Allons au répertoire **tp3** de notre machine (dépôt local). Si nous ne trouvons pas ce répertoire, une autre option consiste à cloner à nouveau le référentiel github.
 * La commande qui nous permet de récupérer la branche distante est ***git fetch***. Tapez :
 ```bash
 git fetch origin gh-pages
 ```
 * Ensuite, pour passer localement à la branche ***gh-pages***, tapez :
 ```bash
 git checkout gh-pages
 ```
---
---
