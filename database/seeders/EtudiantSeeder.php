<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Etudiant;

class EtudiantSeeder extends Seeder
{
    public function run()
    {
        Etudiant::create([
            'prenom' => 'Amadou',
            'nom' => 'Diallo',
            'adresse' => 'Rue de Dakar 1',
            'telephone' => '776543210',
            'matricule' => '2024001',
            'email' => 'amadou.diallo@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/amadou_diallo.jpg', // Chemin vers la photo
            'date_naissance' => '1998-05-15',
        ]);

        Etudiant::create([
            'prenom' => 'Fatou',
            'nom' => 'Diop',
            'adresse' => 'Rue de Dakar 2',
            'telephone' => '776543211',
            'matricule' => '2024002',
            'email' => 'fatou.diop@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/fatou_diop.jpg', // Chemin vers la photo
            'date_naissance' => '1999-07-22',
        ]);

        Etudiant::create([
            'prenom' => 'Moussa',
            'nom' => 'Ndiaye',
            'adresse' => 'Rue de Dakar 3',
            'telephone' => '776543212',
            'matricule' => '2024003',
            'email' => 'moussa.ndiaye@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/moussa_ndiaye.jpg', // Chemin vers la photo
            'date_naissance' => '2000-03-30',
        ]);

        Etudiant::create([
            'prenom' => 'Awa',
            'nom' => 'Sow',
            'adresse' => 'Rue de Dakar 4',
            'telephone' => '776543213',
            'matricule' => '2024004',
            'email' => 'awa.sow@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/awa_sow.jpg', // Chemin vers la photo
            'date_naissance' => '2001-11-10',
        ]);

        Etudiant::create([
            'prenom' => 'Cheikh',
            'nom' => 'Fall',
            'adresse' => 'Rue de Dakar 5',
            'telephone' => '776543214',
            'matricule' => '2024005',
            'email' => 'cheikh.fall@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/cheikh_fall.jpg', // Chemin vers la photo
            'date_naissance' => '1997-01-05',
        ]);

        Etudiant::create([
            'prenom' => 'Mame',
            'nom' => 'Thiam',
            'adresse' => 'Rue de Dakar 6',
            'telephone' => '776543215',
            'matricule' => '2024006',
            'email' => 'mame.thiam@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/mame_thiam.jpg', // Chemin vers la photo
            'date_naissance' => '1998-06-14',
        ]);

        Etudiant::create([
            'prenom' => 'El Hadji',
            'nom' => 'Faye',
            'adresse' => 'Rue de Dakar 7',
            'telephone' => '776543216',
            'matricule' => '2024007',
            'email' => 'elhadji.faye@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/elhadji_faye.jpg', // Chemin vers la photo
            'date_naissance' => '2000-09-21',
        ]);

        Etudiant::create([
            'prenom' => 'Ndeye',
            'nom' => 'Gueye',
            'adresse' => 'Rue de Dakar 8',
            'telephone' => '776543217',
            'matricule' => '2024008',
            'email' => 'ndeye.gueye@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/ndeye_gueye.jpg', // Chemin vers la photo
            'date_naissance' => '1999-04-18',
        ]);

        Etudiant::create([
            'prenom' => 'Ibrahima',
            'nom' => 'Sarr',
            'adresse' => 'Rue de Dakar 9',
            'telephone' => '776543218',
            'matricule' => '2024009',
            'email' => 'ibrahima.sarr@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/ibrahima_sarr.jpg', // Chemin vers la photo
            'date_naissance' => '2001-12-25',
        ]);

        Etudiant::create([
            'prenom' => 'Khady',
            'nom' => 'Ba',
            'adresse' => 'Rue de Dakar 10',
            'telephone' => '776543219',
            'matricule' => '2024010',
            'email' => 'khady.ba@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/khady_ba.jpg', // Chemin vers la photo
            'date_naissance' => '1997-02-28',
        ]);

        Etudiant::create([
            'prenom' => 'Babacar',
            'nom' => 'Sy',
            'adresse' => 'Rue de Dakar 11',
            'telephone' => '776543220',
            'matricule' => '2024011',
            'email' => 'babacar.sy@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/babacar_sy.jpg', // Chemin vers la photo
            'date_naissance' => '1998-08-12',
        ]);

        Etudiant::create([
            'prenom' => 'Adama',
            'nom' => 'Kane',
            'adresse' => 'Rue de Dakar 12',
            'telephone' => '776543221',
            'matricule' => '2024012',
            'email' => 'adama.kane@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/adama_kane.jpg', // Chemin vers la photo
            'date_naissance' => '2000-05-19',
        ]);

        Etudiant::create([
            'prenom' => 'Mariama',
            'nom' => 'Samba',
            'adresse' => 'Rue de Dakar 13',
            'telephone' => '776543222',
            'matricule' => '2024013',
            'email' => 'mariama.samba@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/mariama_samba.jpg', // Chemin vers la photo
            'date_naissance' => '1999-07-07',
        ]);

        Etudiant::create([
            'prenom' => 'Abdoulaye',
            'nom' => 'Diagne',
            'adresse' => 'Rue de Dakar 14',
            'telephone' => '776543223',
            'matricule' => '2024014',
            'email' => 'abdoulaye.diagne@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/abdoulaye_diagne.jpg', // Chemin vers la photo
            'date_naissance' => '2001-03-03',
        ]);

        Etudiant::create([
            'prenom' => 'Aminata',
            'nom' => 'Ndiaye',
            'adresse' => 'Rue de Dakar 15',
            'telephone' => '776543224',
            'matricule' => '2024015',
            'email' => 'aminata.ndiaye@example.com',
            'mot_de_passe' => bcrypt('password'),
            'photo' => 'photos/aminata_ndiaye.jpg', // Chemin vers la photo
            'date_naissance' => '1998-11-23',
        ]);
    }
}
