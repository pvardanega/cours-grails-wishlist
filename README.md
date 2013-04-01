#Démarrer avec Grails

####Références :
* [Grails.org](http://grails.org/),
* [Quick start](http://grails.org/Quick+Start),
* [Grails documentation](http://grails.org/Documentation),
* [Download last version](http://grails.org/download),
* [Plugin twitter-bootstrap](http://twitter.github.com/bootstrap/),
* [template utilisé pour cette application](https://github.com/twitter/bootstrap/blob/master/docs/examples/fluid.html),
* [Heroku](http://www.heroku.com/).

##Prérequis :
* avoir installé la dernière version de grails (testé avec la version 2.2.0) : `grails -version`,
* avoir installé la dernière version du SDK Heroku : `heroku --version`.

##Etape 1 : créer le squelette de l'application
1. générer le template d'application Grails `grails create-app wishlist`
2. créer un répository git `cd wishlist ; git init .`
3. importer le projet dans un IDE
4. démarrer l'application `grails run-app`

##Etape 2 : sécuriser l'application
1. ajouter le plugin spring-security-core et générer les classes nécessaires ([documentation](http://grails-plugins.github.com/grails-spring-security-core/docs/manual/))
2. ajouter deux rôles ("ROLE_USER" et "ROLE_ADMIN") 
3. ajouter deux utilisateurs, un administrateur et un utilisateur classique, affectés du bon rôle dans la classe Bootstrap.groovy
4. ajouter un contrôleur Home qui retourne la chaîne "Hello world" dans sa méthode index
5. modifier le routage pour que la racine de l'application tombe sur la méthode et le contrôleur précédent
6. faire en sorte que seuls les utilisateurs authentifiés peuvent accéder au contrôleur Home (rôle IS_FULLY_AUTHENTICATED)
7. modifier la chaîne retournée par la méthode index du contrôleur Home pour qu'elle retourne "Hello $username". Nécessite l'injection du service : `def springSecurityService`

##Etape 3 : customizer les vues avec le plugin twitter-bootstrap
1. ajouter le plugin twitter-bootstrap ([documentation](http://grails.org/plugin/twitter-bootstrap))
2. modifier le contrôleur Home et sa méthode index pour qu'elle retourne la vue racine index.gsp : `render view: "../index.gsp"`
3. modifier la vue index.gsp pour qu'elle affiche le texte "Hello $username", en utilisant la taglib `<g:message code="..."/>`. Il faut passer le modèle à la vue. Un petit nettoyage de la vue et du template par défaut est le bienvenue (pour supprimer le contenu généré par défaut par Grails).
4. customiser le template en rajoutant une barre de navigation et un menu à gauche (cf. [template choisi](https://github.com/twitter/bootstrap/blob/master/docs/examples/fluid.html))

##Etape 4 : administrer les utilisateurs
1. générer le contrôleur de gestion des utilisateurs et le modifier pour qu'à l'ajout d'un utilisateur, un rôle lui soit attribué (sinon, il ne sera pas possible de se logger avec) : `grails create-controller com.pvardanega.Slot`
2. faites en sorte que les vues soient générées automatiquement au runtime (scaffolding dynamique)
3. modifier le menu pour pouvoir lister et, à minima, ajouter un utilisateur
4. customizer les vues de l’utilisateurs (scaffolding statique)

##Etape 5 : gérer sa liste de cadeaux
1. créer la classe du modèle Product définit par un titre et un prix ; et la relier à un utilisateur unique ([documentation](http://grails.org/doc/2.2.x/guide/GORM.html#gormAssociation))
2. générer le contrôleur et les vues correspondants : `grails generate-all com.pvardanega.Product`
3. customizer les vues pour régler le problème d'affichage dans les listes

##Etape 6 : déployer l'application dans le cloud
1. si vous n'avez pas de compte, en créer sur Heroku
2. se connecter au service d'heroku en ligne de commande `heroku login`
3. créer une application heroku en ligne de commande 'heroku create applicationName`
4. pusher le code sur heroku `git push heroku master`
5. tester votre application `http://applicationName.herokuapp.com`

#Des questions?
Lever la main !
