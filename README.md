# Guide Utilisateur de l'API

# Mise de place du projet Laravel

## Prérequis

Avant de commencer, assurez-vous que les éléments suivants sont installés sur votre machine :

PHP (version 7.4 ou supérieure)
Composer (gestionnaire de dépendances pour PHP)
Serveur Web (par exemple, Apache ou Nginx)
Base de données (par exemple, MySQL, PostgreSQL)

## Étapes d'installation 

1. Ouvrez votre terminal ou votre invité de commandes.

2. Exécutez la commande suivant :

```
composer install
```

3. Une fois l'installation terminée créez un fichier .env en copiant le fichier .env.exemple : 

```
cp .env.example .env
```

4. Génerez une clé d'application Laravel en utilisant la commande suivante : 
```
php artisan key:generate
```

5. Vous pouvez ensuite lancer le serveur de développement intégré à Laravel : 
```
php artisan serve
```

N'oubliez pas de récuperer la base de donnée qui se trouve dans le dossier SQL à la racine du projet

# Authentification

## Inscription
Pour créer un compte utilisateur, effectuez une requête POST vers l'URL suivante :

POST [/api/register](/routes/api.php?plain=1#L45)

Paramètres du corps de la requête (au format JSON) :
```
{
    "name": "Votre nom",
    "email": "Votre adresse e-mail",
    "password": "Votre mot de passe"
}
```


## Connexion
Pour vous connecter à votre compte, effectuez une requête POST vers l'URL suivante :

POST [/api/login](/routes/api.php?plain=1#L46)

Paramètres du corps de la requête (au format JSON) :
```
{
    "email": "Votre adresse e-mail",
    "password": "Votre mot de passe"
}
```
# Univers

## Création d'univers
Pour créer un nouvel univers, effectuez une requête POST vers l'URL suivante :

POST [/api/universe](/routes/api.php?plain=1L29)

Paramètres du corps de la requête (au format JSON) :
```
{
    "name": "Nom de l'univers"
}
```

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.


## Editer un univers

Pour éditer un univers existant, effectuez une requête PATCH vers l'URL suivante : 

PATCH [/api/universe/{universe_id}/update-name](routes/api.php)

Paramètres du corps de la requête (au format JSON) : 

```
{
    "name": "Nouveau nom d'univers"
}
```


Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.



## Suppression d'un univers

Pour supprimer un univers existant, effectuez une requête DELETE vers l'URL suivante : 

DELETE [/api/universe/{universe_id}](/routes/api.php)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

ATTENTION : Nous n'êtes autorisé qu'à supprimer les univers que vous avez crées.

## Liste des univers

Pour afficher la liste des univers déjà existants, effectuez une requête GET vers l'URL suivante : 

GET [/api/universe](/routes/api.php)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

# Personnages

## Création d'un personnage dans un univers

Pour créer un nouveau personnage dans un univers spécifié, effectuez une requête POST vers l'URL suivante :

POST [/api/universe/{universe_id}/characters](/routes/api.php?plain=1L28)


Paramètres du corps de la requête (au format JSON) :

```
{
    "name": "Nom du personnage"
}
```


Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.


## Edition d'un personnage déjà existant

Pour éditer le nom d'un personnage effectuez une requête PATCH ver l'URL suivante : 

PATCH [/api/characters/{character}/update-name](/routes/api.php?plain=1L41)

Paramètres du corps de la requête (au format JSON) : 

```
{
    "name" : "Nouveau nom du personnage"
}
```

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

ATTENTION : Vous n'êtes autorisé qu'à modifier les personnages que vous avez crées.


## Suppression d'un personnage


Pour supprimer un personnage effectuez la quête DELETE vers l'URL suivante : 

DELETE [/api/characters/3](/routes/api.php?plain=1L33)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

ATTENTION : Vous n'êtes autorisé à supprimer que les personnages que vous avez crées.

# Conversations 

## Création d'une conversation avec un personnage

Pour créer une nouvelle conversation avec un personnage spécifié, effectuez une requête POST vers l'URL suivante :

POST [/api/conversation/{character}](/routes/api.php?plain=1L35)


Le seul paramètre requis est l'ID du personnage avec lequel vous souhaitez créer la conversation.

## Ajout d'un message à une conversation

Pour ajouter un message à une conversation existante, effectuez une requête POST vers l'URL suivante :

POST [/api/conversation/{conversationId}/messages](/routes/api.php?plain=1L37)

Paramètres du corps de la requête (au format JSON) :

Le seul paramètre requis est le contenu du message que vous souhaitez ajouter.

Exemple de corps de la requête :

```
{
  "content": "Contenu du message"
}
```

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

## Suppression d'un conversation

Pour supprimer une conversation, effectuez la requête DELETE vers l'URL suivante : 

DELETE [/api/conversation/{conversationId}](/routes/api.php?plain=1L36)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

# Affichage des listes


## Afficher la liste des utilisateurs

Pour afficher la liste des utilisateurs effectuez la requête GET vers l'URL suivante : 

GET [/api/users](/routes/api.php?plain=1L30)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

## Afficher la liste des personnages

Pour afficher la liste des utilisateurs effectuez la requête GET vers l'URL suivante : 

GET [/api/characters](/routes/api.php?plain=1L30)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

## Afficher la liste des univers

Pour afficher la liste des utilisateurs effectuez la requête GET vers l'URL suivante : 

GET [/api/universe](/routes/api.php?plain=1L30)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.

## Afficher la liste des messages dans une conversation

Pour afficher la liste des utilisateurs effectuez la requête GET vers l'URL suivante : 

GET [/api/conversation/{id}/messages](/routes/api.php?plain=1L30)

Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.




















