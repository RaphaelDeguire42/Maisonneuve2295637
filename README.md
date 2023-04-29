#Steps to make users from students:

- add foreing key that references the id of Etudiant
- add this code to the migration of user
```
$students = Etudiant::all();
foreach ($students as $student) {
    $user = new User();
    $user->id = $student->id; //
    $user->name = $student->name; //
    $user->email = $student->email; //
    $user->password = Hash::make('password');
    $user->etudiant_id = $student->id; //
    $user->save();
}
```
- migrate the table villes and populate with the factory
- migrate the table etudiants and populate with the factory
- migrate the table users

Now every etudiants has a corresponding user with the same id, name, and email with a generated password

###Then
- migrate the table langues and populate with the wanted languages
- migrate the table forums and populate with the factory


Logins :
palma19@example.org
E2295637@Maisonneuve

awiegand@example.net
Laravel2023

##Liens
GitHub: https://github.com/RaphaelDeguire42/Maisonneuve2295637
WebDev: https://e2295637.webdev.cmaisonneuve.qc.ca/Maisonneuve2295637