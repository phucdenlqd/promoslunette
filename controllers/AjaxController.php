<?php
class AjaxControllerCore extends FrontController
{
    public function __construct()
    {

        parent::__construct();

    }
    public function displayContent()
    {
		//print_r($_FILES);
		
		
		/*pdf ou image clientinfo */
		// VI sao khong repond dc???
		if ( isset($_FILES["infoclient"]) ) {
			echo "cc";
		}

        /*photo ecarts pupillaires*/
        if (isset($_FILES["photo"])) {

            $UploadDirectory = './photosclients/';

            if ($_FILES["userfile"]["size"] > 5242880) {
                die("Taille du fichier est trop gros!");
            }
            $File_Name = strtolower($_FILES['photo']['name']);
            $File_Ext = substr($File_Name, strrpos($File_Name, '.')); //get file extention

            switch ($File_Ext) {

                case '.png':
                    break;
                case '.PNG':
                    break;
                case '.jpg':
                    break;
                case '.JPG':
                    break;
                case '.jpeg':
                    break;
                case '.JPEG':
                    break;
                default:
                    die('Fichier non pris en charge !'); //output error
            }

            $File_Ext = ".jpg";
            $Random_Number = (int) $this->context->customer->id; //Random number to be added to name.
            $NewFileName = $Random_Number . $File_Ext; //new file name
            unlink($UploadDirectory . $NewFileName);

            if (move_uploaded_file($_FILES['photo']['tmp_name'], $UploadDirectory . $NewFileName)) {
                $nom = $this->context->customer->lastname;
                $prenom = $this->context->customer->firstname;
                $prenom_nom = $prenom . ' ' . $nom;
                $file = Tools::getHttpHost(true) . __PS_BASE_URI__ . 'photosclients/' . $NewFileName;

                $sqldelete = "DELETE FROM " . _DB_PREFIX_ . "photos_clients WHERE `prenom_nom` =" . "'$prenom_nom'";

                Db::getInstance()->execute($sqldelete);
                $sql = "insert into `" . _DB_PREFIX_ . "photos_clients` (prenom_nom ,photo ) values('$prenom_nom',' $file')";
//                                 echo $sql;
                //                                 exit;
                $res = Db::getInstance()->Execute($sql);

                die('Succés! Fichier téléchargé.');
            } else {
                die('Erreur ajout de fichier !');
            }

        }
        /*pdf ou image ordonnances */
        if (isset($_FILES["userfile"])) {

            $UploadDirectory = './ordonnances/';

            if ($_FILES["userfile"]["size"] > 5242880) {
                die("File size is too big!");
            }
            $File_Name = strtolower($_FILES['userfile']['name']);
            $File_Ext = substr($File_Name, strrpos($File_Name, '.')); //get file extention

            switch ($File_Ext) {

                case '.pdf':
                    break;
                default:
                    die('Fichier non pris en charge !'); //output error
            }

            $Random_Number = (int) $this->context->customer->id; //Random number to be added to name.
            $NewFileName = $Random_Number . $File_Ext; //new file name
            unlink($UploadDirectory . $NewFileName);

            if (move_uploaded_file($_FILES['userfile']['tmp_name'], $UploadDirectory . $NewFileName)) {
                $nom = $this->context->customer->lastname;
                $prenom = $this->context->customer->firstname;
                $prenom_nom = $prenom . ' ' . $nom;
                $file = Tools::getHttpHost(true) . __PS_BASE_URI__ . 'ordonnances/' . $NewFileName;

                $sqldelete = "DELETE FROM " . _DB_PREFIX_ . "ordonnances WHERE `prenom_nom` =" . "'$prenom_nom'";

                Db::getInstance()->execute($sqldelete);
                $sql = "insert into `" . _DB_PREFIX_ . "ordonnances` (prenom_nom ,ordonnance ) values('$prenom_nom',' $file')";
                $res = Db::getInstance()->Execute($sql);

                die('Succés! Fichier téléchargé.');
            } else {
                die('Erreur ajout de fichier !');
            }

		}
		
    }
}
