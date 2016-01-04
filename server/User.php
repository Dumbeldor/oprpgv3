<?php

class User {
    public $socket,
              $id,
              $pseudo,
              $rank,
              $salle;
              
    public function __construct($socket, $id=0, $pseudo="NULL", $rank = "membre", $salle=0){
        $this->socket = $socket;
        $this->id = $id;
        $this->pseudo = $pseudo;
        $this->rank = $rank;
        $this->salle = $salle;
    }
    public function getSocket() {
        return $this->socket;
    }
    public function getId() {
        return $this->id;
    }
    public function getPseudo() {
        return $this->pseudo;
    }
    public function getSalle() {
        return $this->salle;
    }
    public function getRank() {
        return $this->rank;
    }

    public function setPseudo($pseudo){
        $this->pseudo = $pseudo;
    }
    public function setRank($rank) {
        $this->rank = $rank;
    }
    public function setId($id) {
        $this->id = $id;
    }
    public function setSalle($salle){
        $this->salle = $salle;
    }

}
