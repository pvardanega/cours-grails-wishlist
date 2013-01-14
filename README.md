#Démarrer avec Grails

####Références :
* [Grails.org](http://grails.org/),
* [Grails documentation](http://grails.org/Documentation),
* [Download last version](http://grails.org/download),
* [Plugin twitter-bootstrap](http://twitter.github.com/bootstrap/),
* [template utilisé pour cette application](https://github.com/twitter/bootstrap/blob/master/docs/examples/fluid.html),
* [Heroku](http://www.heroku.com/).

##Prérequis :
* avoir installé la dernière version de grails (2.2.0 à ce jour) : `grails -version`,
* avoir isntallé la dernière version du SDK Heroku : `heroku --version`.

##Etape 1 : créer le squelette de l'application
1. générer du squelette d'application Grails
2. créer un répository git
3. importer le projet dans un IDE
4. démarrer l'application

##Etape 2 : sécuriser l'application
1. ajouter le plugin spring-security-core et générer les classes nécessaires
2. ajouter deux rôles ("ROLE_USER" et "ROLE_ADMIN") 
3. ajouter deux utilisateurs, un administrateur et un utilisateur classique, affectés du bon rôle
4. redémarrer l'application et tester le formulaire d'authentification
5. ajouter un contrôleur Home qui retourne la chaîne "Hello world" dans sa méthode index
6. modifier le mapping du routage pour que la racine de l'application tombe sur la méthode et le contrôleur précédent
7. faire en sorte que seuls les utilisateurs authentifiés peuvent accéder au contrôleur Home
8. modifier la chaîne retournée par la méthode index du contrôleur Home pour qu'elle retourne "Hello $username"
9. edémarrer l'application et tester que votre nom d'utilisateur s'affiche

##Etape 3 : customizer les vues avec le plugin twitter-bootstrap
1. ajouter le plugin 
2. modifier le contrôleur Home et sa méthode index pour qu'elle affiche la vue racine index.gsp
3. modifier la vue index.gsp pour qu'elle affiche le texte "Hello $username", en utilisant la taglib `<g:message code="..."/>`. Un petit nettoyage de la vue et du template par défaut est le bienvenue (pour supprimer le contenu généré par défaut par Grails).
4. customiser le template en rajoutant une barre de navigation et un menu à gauche (cf. [template choisi](https://github.com/twitter/bootstrap/blob/master/docs/examples/fluid.html))

##Etape 4 : administrer les utilisateurs
1. généraer le contrôleur de gestion des utilisateurs et le modifier pour qu'à l'ajout d'un utilisateur, un rôle lui soit attribué (sinon, il ne sera pas possible de se logger avec)
2. faites en sorte que les vues soient générées automatiquement au runtime (scaffolding dynamique)
3. modifier le menu pour pouvoir lister et, à minima, ajouter un utilisateur
4. customizer les vues de l’utilisateurs (scaffolding statique)
5. redémarrer l'application et tester les opérations de CRUD sur des utilisateurs

##Etape 5 : gérer sa liste de cadeaux
1. créer la classe du modèle Product définit par un titre et un prix ; et la relier à un utilisateur unique
2. générer le contrôleur et les vues correspondants
3. customizer les vues pour régler le problème d'affichage dans les listes

##Etape 6 : déployer l'application dans le cloud
1. si vous n'avez pas de compte, en créer sur Heroku
2. se connecter au service d'heroku en ligne de commande
3. créer une application heroku en ligne de commande
4. pusher le code sur heroku
5. tester votre application

#Des questions?
Lever la main !
