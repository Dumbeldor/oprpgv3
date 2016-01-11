<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 ******************************************************************************
 * Description : 
 * Class for Editor
 * @todo Finish this description
 * @author Dumbeldor
 * @version 1.0.0
 ******************************************************************************
 */


class Editor
{
    public function __construct(){
		$this->CI =& get_instance();
	}
    public function getEditor() {
        if($this->CI->user->isRedactor() || $this->CI->user->isModo()){
			return base_url('assets/js/ckeditorStaff/ckeditor.js');
		} else if($this->CI->user->isVIP()) {
			return  base_url('assets/js/ckeditorVIP/ckeditor.js');
		} else {
			return  base_url('assets/js/ckeditorUsers/ckeditor.js');
		}
    }
	public function getEditorBase() {
		return base_url('assets/js/ckeditorBase/ckeditor.js');
	}
}