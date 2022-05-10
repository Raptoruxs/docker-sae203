**Equipe :** 18
**Année :** 2021-2022
**IUT Le Havre - Cours GIT**
--------------------------------------------------------------------------------------
# Compte rendu SAE 2.03 - Installation de services réseaux
## 10 mai
### TP4 - Résolution de conflits et pull request

--------------------------------------------------------------------------------------
### TP5 - Comment créer un site Web sur GitHub pages

#### 1 - Créer un site Web pour un référentiel existant

* Aller sur votre dépôt github du **tp3**. Ce référentiel est à retrouver sur le site 

```bash
https://github.com/<votre-utilisateur-github>/tp3
```

* Si nous voulons publier une page Web associée à ce référentiel, nous aurons besoin qu’il soit publique (sauf si vous avez un compte github premium). Pour cela, allez sur **Settings** et puis, en bas de page cliquez sur **Change visibility** puis sur **Make public**

* Encore en **Settings** cliquez sur **Pages** comme dans l’image ci-dessous, puis sur **Choose a theme**

* Sélectionnez un des thèmes puis cliquez sur **Select theme**

* Cette action vous amènera à un autre écran où vous allez créer un fichier **index.md** par défaut. Ce fichier sera votre page d’accueil. Cliquez sur **Commit changes**

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
