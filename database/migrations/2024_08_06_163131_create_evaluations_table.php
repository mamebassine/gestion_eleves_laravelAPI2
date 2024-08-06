<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('evaluations', function (Blueprint $table) {
        $table->id();
        $table->foreignId('etudiant_id')->constrained('etudiants')->onDelete('cascade');
        $table->foreignId('matiere_id')->constrained('matieres')->onDelete('cascade');
        $table->date('date');
        $table->integer('valeur');
        $table->timestamps();
    });
}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('evaluations');
    }
};
