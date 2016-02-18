<?php

function getMonster($inMove = false){
    $CI = get_instance();
    $CI->load->model('game/monster_model');
    $monster = $CI->monster_model->getMonster();
    if (empty($monster)) {
        if($inMove)
            return false;
        header('500 Internal Server Error', true, 500);
        die("Aucun monstre trouvé");
    }
    else {
        $CI->load->library('monster');
        $monster = $monster[0];
        $monster['lastAction'] = time();
        $CI->monster->hydrate($monster);
        $monster['attack'] = true;
        $monster['waiting'] = $CI->monster->getWaiting();
        return $monster;
    }
}