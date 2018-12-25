<?php
namespace App\Controller;

class Menu extends Base
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
				$stmt = $this->c->db->prepare("SELECT item_id,item_name,image FROM c9_menu WHERE (item_name LIKE '%".$keyword."%')  AND is_active =1");
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
	* Get Menu Items
	*/
	public function getMenuItems($request, $response, $args)
	{
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		try{		 		
			//$stmt = $this->c->db->prepare("SELECT * FROM c9_menu WHERE  is_active =1 AND DATE(created_at) = CURDATE()");
			$stmt = $this->c->db->prepare("SELECT * FROM c9_menu WHERE  is_active =1 ORDER BY created_at DESC");
			$stmt->execute(); 
			$nRows = count($stmt->fetchAll());
			if($nRows > 0 ){
				$stmt->execute(); 
				$menuItems = $stmt->fetchAll();	
				$i=0;
				foreach($menuItems as $menuItem){				
					$menuItems[$i]['image'] = $baseUrl."/uploads/menu/".$menuItem['image'];
					$i++;	
				}					
				$json = array("error" => false, "message" =>$menuItems);
			}else{
					
				$json = array("error" => false, "message" =>"No Menu Item Found!");
			}			
		}catch(PDOException $e){
				
			$json = array("error" => true, "message" => $e->getMessage());
		}		
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
	/*
	* Get Menu Item Detail
	*/
	public function getItemDetails($request, $response, $args)
	{
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($args['item_id'])){
			$item_id = $args['item_id'];	
			try{	
				$stmt = $this->c->db->prepare("SELECT * FROM c9_menu WHERE item_id ='".$item_id."' AND is_active =1");
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
			
			$json = array("error" => false, "message" =>"ItemID not empty!");
		}		
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);		
	}
}