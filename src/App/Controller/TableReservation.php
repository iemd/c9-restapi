<?php
namespace App\Controller;

class TableReservation extends Base
{	
	/*
	* Table Reservation
	*/
	public function reservation($request, $response, $args)
	{
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['name']) && !empty($input['email']) && !empty($input['mobile'])){
			$name = $input['name'];
			$email = $input['email'];
			$mobile = $input['mobile'];
			$date = $input['date'];
			$time = $input['time'];
			$customer_type = $input['customer_type'];
			$no_of_people = $input['no_of_people'];		
			try{
				$newDate = date("Y-m-d", strtotime($date));
				$stmt1 = $this->c->db->prepare("INSERT INTO c9_table_reservation(name,email,mobile,no_of_people,customer_type,date,time)VALUES('".$name."','".$email."','".$mobile."','".$no_of_people."','".$customer_type."','".$newDate."','".$time."')");
				$result = $stmt1->execute(); 
				$reservation_id = $this->c->db->lastInsertId();
				if($result){			
								 
					$json = array("error" => false, 'reservation_id'=>$reservation_id, "message" => "Thank You, Our personnel will be contacting you shortly to confirm the reservation.");
										 
				}else{
							 
					$json = array("error" => true, "message" => "Database Error!");
				}
			}catch(PDOException $e){
					
				$json = array("error" => true, "message" => $e->getMessage());
			}
		}else{
			
			$json = array("error" => true, "message" =>"Name, Email and Mobile not empty!");
		}
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
}