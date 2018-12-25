<?php
namespace App\Controller;

class SpecialPromotion extends Base
{   
    /*
	* Search for food
	*/
    public function searchForFood($request, $response, $args)
	{
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['keyword'])){
			$keyword = $input['keyword'];	
			try{
                				
				$stmt = $this->c->db->prepare("SELECT m.item_id,m.item_name,m.image FROM `c9_menu` as m INNER JOIN `c9_special_promotion` as sp ON m.item_id = sp.item_id WHERE m.is_active =1 AND DATE(sp.created_at) = CURDATE() AND (item_name LIKE '%".$keyword."%')");
				$stmt->execute(); 
				$nRows = count($stmt->fetchAll());
				if($nRows > 0 ){
					$stmt->execute();
					$foodItems = $stmt->fetchAll();
					$i=0;
					foreach($foodItems as $foodItem){				
						$foodItems[$i]['image'] = $baseUrl."/uploads/menu/".$foodItem['image'];
						$i++;	
					}					
					$json = array("error" => false, "message" =>$foodItems);
				}else{
					
					$json = array("error" => false, "message" =>"Not Found!");
				}
			}catch(PDOException $e){
					
				$json = array("error" => true, "message" => $e->getMessage());
			}
		}else{
			
			$json = array("error" => false, "message" =>"Keyword not empty!");
		}		
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);		
	}
    /*
	* Get Special Promotion
	*/
	public function getSpecialPromotion($request, $response, $args)
	{
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		try{
			if(empty($args['item_id'])){    		
				$stmt = $this->c->db->prepare("SELECT m.item_id,m.item_name,m.image,m.calories,sp.created_at FROM `c9_menu` as m INNER JOIN `c9_special_promotion` as sp ON m.item_id = sp.item_id WHERE m.is_active =1 AND DATE(sp.created_at) = CURDATE()");
				$stmt->execute(); 
				$nRows = count($stmt->fetchAll());
				if($nRows > 0 ){
					$stmt->execute(); 
					$specialPromotions = $stmt->fetchAll();	
					$i=0;
					foreach($specialPromotions as $specialPromotion){				
						$specialPromotions[$i]['image'] = $baseUrl."/uploads/menu/".$specialPromotion['image'];
						$i++;	
					}					
					$json = array("error" => false, "message" =>$specialPromotions);
				}else{
					
					$json = array("error" => false, "message" =>"No Special Promotion Found!");
				}
			}else{
				$item_id = $args['item_id'];
				$stmt2 = $this->c->db->prepare("SELECT m.item_id,m.item_name,m.price,m.special_price,m.description,m.image,m.calories,sp.created_at FROM `c9_menu` as m INNER JOIN `c9_special_promotion` as sp ON m.item_id = sp.item_id WHERE m.item_id = $item_id AND  m.is_active =1");
				$stmt2->execute(); 
				$nRows = count($stmt2->fetchAll());
				if($nRows > 0 ){
					$stmt2->execute();
					$specialPromotions = $stmt2->fetchAll();
					$i=0;
					foreach($specialPromotions as $specialPromotion){				
						$specialPromotions[$i]['image'] = $baseUrl."/uploads/menu/".$specialPromotion['image'];
						$i++;	
					}					
					$json = array("error" => false, "message" =>$specialPromotions);
				}else{
					
					$json = array("error" => false, "message" =>"Invalid ItemID!");
				}	
				
			}	
		}catch(PDOException $e){
				
			$json = array("error" => true, "message" => $e->getMessage());
		}		
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
	/*
	* Get Paid Items
	*/
	public function getPaidItems($request, $response, $args){
		
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($args['user_id'])){
			$user_id = $args['user_id'];
			try{
				$stmt1 = $this->c->db->prepare("SELECT * FROM `c9_user` WHERE `is_active` = 1 AND user_id ='".$user_id."'");
				$stmt1->execute(); 
				$nRows = count($stmt1->fetchAll());
				if($nRows >0 ){				    
				    $stmt1->execute();
                    $user = $stmt1->fetchAll();
                    foreach($user as $u){
						$username = $u['user_name'];
					}					
					$stmt = $this->c->db->prepare("SELECT * FROM `c9_paid_item` WHERE user_id ='".$user_id."' ORDER BY created_at DESC");
					$stmt->execute(); 
					$result = count($stmt->fetchAll());
					if($result >0 ){
						$paidItemsDetail = array(); 
						$stmt->execute();				
						$paidItems = $stmt->fetchAll();
						$i=0;
						foreach($paidItems as $paidItem){
							$paidItemsDetail[$i]['order_id'] = $paidItem['order_id'];
							$paidItemsDetail[$i]['name'] = $username;
							$created_at = explode(' ',$paidItem['created_at']);
							$paidItemsDetail[$i]['date'] = $created_at[0];
							$paidItemsDetail[$i]['time'] = $created_at[1];
							$paidItemsDetail[$i]['serial_number'] = $paidItem['serial_number'];						
						   $i++;	
						}  					
						$json = array("error" => false, "message" => $paidItemsDetail);
					}else{
						
						$json = array("error" => false, "message" =>"No paid item found!");
					}
				}else{
					
					$json = array("error" => false, "message" =>"Invalid UserID!");
					
				}	
			}catch(PDOException $e){
					
				$json = array("error" => true, "message" => $e->getMessage());
			}	
		}else{
			
			$json = array("error" => true, "message" =>"UserID not empty!");
		}
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}	 
}