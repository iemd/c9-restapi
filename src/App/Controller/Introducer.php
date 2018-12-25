<?php
namespace App\Controller;

class Introducer extends Base{
	/*
	* Introducer Sign Up
	*/
	public function introducerSignUp($request, $response, $args)
	{
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['name']) && !empty($input['phone'])){
			$name = $input['name'];
			$phone = $input['phone'];
			try{
				$stmt1 = $this->c->db->prepare("SELECT * FROM c9_introducer WHERE  introducer_phone='".$phone."'");
				$stmt1->execute(); 
				$nRows = count($stmt1->fetchAll());
				if($nRows == 0){
					//---
					$stmt2 = $this->c->db->prepare("INSERT INTO c9_introducer(introducer_name,introducer_phone)VALUES('".$name."','".$phone."')");
					$result = $stmt2->execute();
					$introducer_id = $this->c->db->lastInsertId();				
					if($result){
						function generateRandomString($length = 8){
							$char="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
							$random = substr(str_shuffle($char), 0, $length);
							return $random;
						}
						$qrcode = generateRandomString(20);
						$randName = md5(uniqid(rand() * time()));
						$qrimage_name = $introducer_id.$randName.".png";
						$qrimage_url = "uploads/qrcode/".$qrimage_name;				
						$this->c->qr->setText($qrcode);
						$this->c->qr->setSize(100);
						$this->c->qr->setMargin(20);
						$this->c->qr->writeFile($qrimage_url);
						//---
						$stmt3 = $this->c->db->prepare("UPDATE `c9_introducer` SET `qr_code` = '".$qrcode."',`qr_image` = '".$qrimage_name."'   WHERE `introducer_id` = '".$introducer_id."'");
						$result = $stmt3->execute();
						if($result){
							$qrcode_img_url = $baseUrl."/".$qrimage_url;
							$json = array(
								"error" => false,
								"introducer_id"=>$introducer_id,
								//"name"=>$name,
								//"phone"=>$phone,
								//"qrcode"=>$qrcode_img_url,
								"message" => "Registered successfully!"
							);							 
						}else{
								 
							$json = array("error" => true, "message" => "Database Error!");
						}						 
					}else{
							 
						$json = array("error" => true, "message" => "Database Error!");
					}				
				}else{
					
					$json = array("error" => true, "message" =>"Introducer with phone ".$phone." already exists!");
				}

			}catch(PDOException $e){
					
					 $json = array("error" => true, "message" => $e->getMessage());
			}
		}else{
			
			$json = array("error" => true, "message" =>"Name and Phone not empty!");
		}
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
	/*
	* Get QR Code
	*/
	public function getQrCode($request, $response, $args)
	{
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($args['introducer_id'])){
			$introducer_id = $args['introducer_id'];
			try{	
				$stmt = $this->c->db->prepare("SELECT introducer_name,introducer_phone,qr_image FROM c9_introducer WHERE introducer_id ='".$introducer_id."'");
				$stmt->execute(); 
				$result = count($stmt->fetchAll());
				if($result > 0 ){
					$stmt->execute();
					while($row = $stmt->fetch()){				
					  $qr_image = $baseUrl."/uploads/qrcode/".$row['qr_image'];				 
					}
					$stmt->execute();
					$introducer = $stmt->fetchAll();
					$introducer[0]['qr_image'] = $qr_image;				
					$json = array("error" => false, "message" => $introducer[0]);
				}else{
					
					$json = array("error" => true, "message" =>"Not Found!");
				}
			}catch(PDOException $e){
					
				$json = array("error" => true, "message" => $e->getMessage());
			}	
		}else{
			
			$json = array("error" => true, "message" =>"IntroducerID not empty!");
		}
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}	
}