<?php

class HolaController extends Controller{
    
    public function actionIndex(){
        
        $model = CActiveRecord:: model("Usuarios")->findAll();
        $twitter ="@kikeacmlm";
        $this->render("index", array("model"=>$model, "twitter"=>$twitter));
    }
    
}