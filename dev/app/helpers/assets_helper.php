<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	/* Cette petite fonction nous permettra de deplacer tres facilement 
	 * le dossier assets sans reecrire toutes les URL pour inclure les 
	 * fichiers CSS
	 */
	
	if ( ! function_exists('css_url')){
		// Permet de renvoyer l'url du fichier css passe en parametre
		function css_url($value){
			return base_url() . 'assets/css/' . $value . '.css';
		}
	}

	if ( ! function_exists('js_url')){
		// Permet de renvoyer l'url du fichier javascript passe en parametre
		function js_url($value){
			return base_url() . 'assets/js/' . $value . '.js';
		}
	}

	if ( ! function_exists('img_url')){
		// Permet de renvoyer l'url d'une image
		// Attention : passer le nom de l'image AVEC son extension
		function img_url($value){
			return base_url() . 'assets/img/' . $value;
		}

	}

	if ( ! function_exists('img')){
		// Permet de renvoyer la balise image d'un nom d'image passe en parametre
		// la fonction prend egalement l'alt qui est facultatif
		function img($nom, $alt = ''){
			return '<img src="' . img_url($nom) . '" alt="' . $alt . '" />';
		}
	}