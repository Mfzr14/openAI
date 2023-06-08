<body>
  <h1 align=center>Guide Utilisateur de l'API</h1>
  
  <h2>Inscription</h2>
  <p>Pour créer un compte utilisateur, effectuez une requête POST vers l'URL suivante :</p>
  <pre><code>[POST /api/register](/routes/api.php)</code></pre>
  
  <p>Paramètres du corps de la requête (au format JSON) :</p>
  <pre><code>{
  "name": "Votre nom",
  "email": "Votre adresse e-mail",
  "password": "Votre mot de passe"
}</code></pre>

  <h2>Connexion</h2>
  <p>Pour vous connecter à votre compte, effectuez une requête POST vers l'URL suivante :</p>
  <pre><code>POST /api/login</code></pre>
  
  <p>Paramètres du corps de la requête (au format JSON) :</p>
  <pre><code>{
  "email": "Votre adresse e-mail",
  "password": "Votre mot de passe"
}</code></pre>

  <h2>Création d'univers</h2>
  <p>Pour créer un nouvel univers, effectuez une requête POST vers l'URL suivante :</p>
  <pre><code>POST /api/univers</code></pre>
  
  <p>Paramètres du corps de la requête (au format JSON) :</p>
  <pre><code>{
  "name": "Nom de l'univers"
}</code></pre>

  <p>Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.</p>

 
 <h2>Création d'un personnage dans un univers</h2>
  <p>Pour créer un nouveau personnage dans un univers spécifié, effectuez une requête POST vers l'URL suivante :</p>
  <pre><code>POST /api/univers/{univers_id}/characters</code></pre>

  <p>Paramètres du corps de la requête (au format JSON) :</p>
  <pre><code>
{
  "nom": "Nom du personnage"
}
  </code></pre>

  <p>Assurez-vous d'inclure l'en-tête "Authorization" dans vos requêtes avec la valeur "Bearer votre_token_d'authentification" pour accéder aux ressources protégées.</p>

    
</body>
</html>