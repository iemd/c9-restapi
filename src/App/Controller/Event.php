<?php
namespace App\Controller;
//use PHPMailer;
class Event extends Base{
	/*
	* Get Events
	*/
	public function getEvents($request, $response, $args){
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		try{
	        if(!empty($args['time'])){
				
				$time = $args['time'];
				$timePrm = array('list','day','month','year');
                if(in_array($time,$timePrm)){
					
					if($time == 'list'){
						
						$sql = "SELECT event_id, title, from_time FROM c9_event";
						
					}else if($time == 'day'){				
						
						$sql = "SELECT event_id, title, from_time,created_at FROM c9_event WHERE DATE(created_at) = CURDATE()";
											
					}else if($time == 'month'){
						
						$sql = "SELECT event_id, title, from_time,created_at FROM c9_event WHERE MONTH(created_at) = MONTH(CURDATE()) AND YEAR(created_at) = YEAR(CURDATE())";					

					}else if($time == 'year'){
						
						$sql = "SELECT event_id, title, from_time,created_at FROM c9_event WHERE  YEAR(created_at) = YEAR(CURDATE())";	
						
					}else{
						
						
					}
					$stmt = $this->c->db->prepare($sql);
					$stmt->execute(); 
					$nRows = count($stmt->fetchAll());
					if($nRows > 0 ){
						$stmt->execute(); 
						$events = $stmt->fetchAll();										
						$json = array("error" => false, "message" =>$events);
					}else{
					
						$json = array("error" => false, "message" =>"No Event Found!");
					}						
				}else{
					
					$json = array("error" => true, "message" =>"Please Enter('list','day','month','year')");
				}			
			}else{
				
				$sql = "SELECT event_id, title, from_time FROM c9_event";				
				$stmt = $this->c->db->prepare($sql);
				$stmt->execute(); 
				$nRows = count($stmt->fetchAll());
				if($nRows > 0 ){
					$stmt->execute(); 
					$events = $stmt->fetchAll();										
					$json = array("error" => false, "message" =>$events);
				}else{
					
					$json = array("error" => false, "message" =>"No Event Found!");
				}	
			}			
		}catch(PDOException $e){
				
			$json = array("error" => true, "message" => $e->getMessage());
		}	
		//print_r();
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}	
}