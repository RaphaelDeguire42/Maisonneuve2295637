##Lignes de commande

####Projet
    composer create-project --prefer-dist laravel/laravel Maisonneuve2295637 "8.x"

####Modèles
    php artisan make:model -m Etudiant
    php artisan make:model -m Ville

####Create Tables
    php artisan migrate

####Generate Data
    php artisan tinker
    > \App\Models\Ville::factory()->times(15)->create();
    > \App\Models\Etudiant::factory()->times(100)->create();

####Create Controllers
    php artisan make:controller VilleController -m Ville
    php artisan make:controller EtudiantController -m Etudiant

--- ---
##Liens
GitHub: https://github.com/RaphaelDeguire42/Maisonneuve2295637

##Thème Formulaires
https://demo.tutorialzine.com/2015/07/7-clean-and-responsive-forms/