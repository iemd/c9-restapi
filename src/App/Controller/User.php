<?php
namespace App\Controller;
use PHPMailer;
class User extends Base{
	/*
	* Users Registration
	*/
	public function signup($request, $response, $args){
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['username']) && !empty($input['mobile']) && !empty($input['email']) && !empty($input['password'])){
			$username = $input['username'];
			$mobile = $input['mobile'];
			$email = $input['email'];
			$pass = $input['password'];
			$salt = substr(md5(uniqid(rand(), true)), 0, 9);
			$password = (md5($salt . md5($salt . md5($pass))));        		
			$stmt1 = $this->c->db->prepare("SELECT * FROM c9_user WHERE email='".$email."'"); //$stmt1
			$stmt1->execute(); 
			$nRows = count($stmt1->fetchAll());
			if($nRows == 0){ //if user with email not exists.
			  try{
				$stmt2 = $this->c->db->prepare("INSERT INTO c9_user(user_name,mobile,email,password,salt)VALUES('".$username."','".$mobile."','".$email."','".$password."','".$salt."')");
				$result = $stmt2->execute();
				$last_id = $this->c->db->lastInsertId();
				if($result){
					$verification_code = substr(md5(uniqid(rand(), true)), 6, 6);
					$verify_url = $baseUrl."/verify/".$last_id."/".$verification_code;
					$mail = new PHPMailer();
					$mail->IsSMTP();                                      // set mailer to use SMTP
					//$mail->SMTPDebug = 1;                               // Enable verbose debug output
					$mail->Host = "cloud9.condoassist2u.com";                 // specify main and backup server
					$mail->SMTPAuth = true;                               // turn on SMTP authentication
					$mail->Username = "support@cloud9.condoassist2u.com";// SMTP username
					$mail->Password = "HhitXgT;n2BH";                       // SMTP password
					$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
					$mail->Port = 587;                                    // TCP port to connect to
					$mail->SMTPOptions = array(
						'ssl' => array(
							'verify_peer' => false,
							'verify_peer_name' => false,
							'allow_self_signed' => true
						)
					);
					$mail->SetFrom('support@cloud9.condoassist2u.com','CLOUD9');

					//$mail->AddAddress("josh@example.net", "Josh Adams");
					$mail->AddAddress($email);   // name is optional
					$mail->AddReplyTo("donotreply@cloud9.condoassist2u.com", "CLOUD9");

					$mail->WordWrap = 50;                                 // set word wrap to 50 characters
					//$mail->AddAttachment("/var/tmp/file.tar.gz");       // add attachments
					//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");  // optional name
					$mail->IsHTML(true);                                  // set email format to HTML

					$mail->Subject = 'CLOUD9 Account Activation';
					$bodyContent = '<h1>Hello, <b>'.$username.'</b></h1>';
					$bodyContent .= '<p>Congratulations and greetings from the CLOUD9 team! Your account at CLOUD9 account is now active. You are now able to utilise our mobile apps facilities for your daily activities. </p>								  
					<p>Please click on following link to activate your account:<br><b>'.$verify_url.'</b></p>
					<p>Feel free to communicate with us using the above account information for any query. We offer 24 hours customer support with a dedicated team on phone and via e-mail. </br> We hope you enjoy your experience with us! </br> For further enquiries, please email to support@cloud9.com</p>
					<p>Yours sincerely,</p>
					<p>CLOUD9 Support</p>
					<p><small>This is a computer generated email. Do not reply to this email.</small></p>';
					$mail->Body = $bodyContent;
					//$mail->AltBody = "This is the body in plain text for non-HTML mail clients";
					if(!$mail->Send()){
				
					   $json = array("error" => true, "message" => $mail->ErrorInfo);
					   
					}else{
					   $stmt3 = $this->c->db->prepare("UPDATE `c9_user` SET `verification_code` = '".$verification_code."'  WHERE `user_id` = '".$last_id."'");
					   $result = $stmt3->execute(); 
					   if($result){
						 $json = array("error" => false, "user_id" =>$last_id, "message" => "Registered successfully!");  
					   }else{				   
						 $json = array("error" => true, "message" => "Database error!");  
					   }
					}		 
								
				 }else{
					 
					$json = array("error" => true, "message" => "Database error!");
				 }	
				}catch(PDOException $e){
				   if($e->getCode() == 23000){
					   $json = array("error" => true, "message" => "Username already in use!");
				   }else{
					 $json = array("error" => true, "message" => $e->getMessage());  
				   }       
				} 
			}else{ //if user with email exists.
				$stmt1->execute(); 
				while($row = $stmt1->fetch()){					
					$user_id = $row['user_id'];			 
				}
				$stmt4 = $this->c->db->prepare("UPDATE `c9_user` SET `registration_token` = 'TOKEN100', `is_active` = '0' WHERE  user_id = '".$user_id."'");
				$result = $stmt4->execute(); 
				if($result){
					$verification_code = substr(md5(uniqid(rand(), true)), 6, 6);
					$verify_url = $baseUrl."/verify/".$user_id."/".$verification_code;
					$mail = new PHPMailer();
					$mail->IsSMTP();                                      // set mailer to use SMTP
					//$mail->SMTPDebug = 1;                                 // Enable verbose debug output
					$mail->Host = "cloud9.condoassist2u.com";                 // specify main and backup server
					$mail->SMTPAuth = true;                               // turn on SMTP authentication
					$mail->Username = 'support@cloud9.condoassist2u.com';// SMTP username
					$mail->Password = 'HhitXgT;n2BH';                     // SMTP password
					$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
					$mail->Port = 587;                                    // TCP port to connect to
					$mail->SMTPOptions = array(
					'ssl' => array(
						'verify_peer' => false,
						'verify_peer_name' => false,
						'allow_self_signed' => true
					)
					);
					$mail->SetFrom('support@cloud9.condoassist2u.com','CLOUD9');

					//$mail->AddAddress("josh@example.net", "Josh Adams");
					$mail->AddAddress($email);   // name is optional
					$mail->AddReplyTo("donotreply@cloud9.condoassist2u.com", "CLOUD9");

					$mail->WordWrap = 50;                                 // set word wrap to 50 characters
					//$mail->AddAttachment("/var/tmp/file.tar.gz");       // add attachments
					//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");  // optional name
					$mail->IsHTML(true);                                  // set email format to HTML

					$mail->Subject = 'CLOUD9 Account Activation';
					$bodyContent = '<h1>Hello, <b>'.$username.'</b></h1>';
					$bodyContent .= '<p>Congratulations and greetings from the CLOUD9 team! Your account at CLOUD9 account is now active. You are now able to utilise our mobile apps facilities for your daily activities. </p>								  
					<p>Please click on following link to activate your account:<br><b>'.$verify_url.'</b></p>
					<p>Feel free to communicate with us using the above account information for any query. We offer 24 hours customer support with a dedicated team on phone and via e-mail. </br> We hope you enjoy your experience with us! </br> For further enquiries, please email to support@cloud9.com</p>
					<p>Yours sincerely,</p>
					<p>CLOUD9 Support</p>
					<p><small>This is a computer generated email. Do not reply to this email.</small></p>';
					$mail->Body = $bodyContent;
					//$mail->AltBody = "This is the body in plain text for non-HTML mail clients";
					if(!$mail->Send()){
						
					   $json = array("error" => true, "message" => $mail->ErrorInfo);
					   
					}else{
					   $stmt5 = $this->c->db->prepare("UPDATE `c9_user` SET `verification_code` = '".$verification_code."'  WHERE `user_id` = '".$user_id."'");
					   $result = $stmt5->execute(); 
					   if($result){
						 $json = array("error" => false, "user_id" =>$user_id, "message" => "Registered successfully!");  
					   }else{				   
						 $json = array("error" => true, "message" => "Database error!");  
					   }
					}		 
								
				 }else{
					 
					  $json = array("error" => true, "message" => "Database error!");
				 }			
				
			} // end if user with email exists.
		 }else{
			 
			 $json = array("error" => true, "message" => "Username,Mobile,Email,Password not blank!"); 
			 
		 }
		 $response->withHeader('Content-type', 'application/json');
		 return $response->withJson($json);

	}
	/*
	* Verify Email
	*/
	public function verifyEmail($request, $response, $args){
		if(!empty($args['user_id']) && !empty($args['code'])){
		$user_id = $args['user_id']; 
		$verification_code = $args['code']; 
        try{
			$stmt1 = $this->c->db->prepare("SELECT * FROM c9_user WHERE is_active = 0 AND user_id ='".$user_id."'");
			$stmt1->execute(); 
			$nRows = count($stmt1->fetchAll());
			if($nRows == 1 ){
			    $stmt1->execute();
                while($row = $stmt1->fetch()){	
				
					$vcode = $row['verification_code']; 					
				} 
                if($vcode == $verification_code){
					$stmt2 = $this->c->db->prepare("UPDATE `c9_user` SET `is_active` = '1'  WHERE `user_id` = '".$user_id."'");
					$result = $stmt2->execute();
					if($result){
						
						$json = "Your account is activated.";  
						 
					}else{
						 
						 $json = array("error" => true, "message" => "Database Error!");
					}			
				}else{
					
					$json = array("error" => true, "message" => "Wrong verification code!");
				}
			}else{
				
				$json = array("error" => true, "message" => "Invalid UserID!"); 
			}		 
			}catch(PDOException $e){
				
				$json = array("error" => true, "message" => $e->getMessage());
			} 
		 }else{
			 
			 $json = array("error" => true, "message" => "Verification Code not blank!"); 
			 
		 }
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
	/*
	* Login
	*/
	public function login($request, $response, $args){
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['username']) && !empty($input['password'])){
			$username = $input['username'];
			$pass = $input['password'];
			try{		
				$stmt1=$this->c->db->prepare("SELECT * FROM c9_user WHERE (user_name='".$username."' OR email='".$username."')"); 
				$stmt1->execute();         		
				$nRows = count($stmt1->fetchAll());
				if($nRows == 1){
					$stmt1->execute();
					while($row = $stmt1->fetch()){					
						$password = $row['password'];
						$salt = $row['salt'];	
					}
					$pass_word = (md5($salt . md5($salt . md5($pass)))); 
					if($pass_word == $password){
						$stmt2 = $this->c->db->prepare("UPDATE `c9_user` SET `login_status` = 'Y' WHERE (user_name='".$username."' OR email='".$username."')"); 
						$result = $stmt2->execute();
						if($result){
							$stmt1->execute();
							while($row = $stmt1->fetch()){
								$user['user_id'] = $row['user_id'];
								$user['user_name'] = $row['user_name'];
								$user['mobile'] = $row['mobile'];
								$user['email'] = $row['email']; 	
							}	
							$json = array("error" => false, "message" =>$user);						
						}else{
							$json = array("error" => true, "message" =>"Database Error!");
						}					
					}else{
						
						$json = array("error" => true, "message" =>"Invalid Username/Password!");
					}				
				}else{
					
					$json = array("error" => true, "message" =>"Invalid Try!");				
				}
			}catch(PDOException $e){
					
				$json = array("error" => true, "message" => $e->getMessage());
			}		
		}else{
			 
			 $json = array("error" => true, "message" => "Username and Password not blank!"); 
			 
		}
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
	/*
	* Get Profile
	*/
	public function getProfile($request, $response, $args){
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($args['user_id'])){
			$user_id = $args['user_id'];
			try{	
				$stmt = $this->c->db->prepare("SELECT user_id,user_name,mobile,email,password,salt,gender,home_phone,state,updated_at,created_at,photo,login_status,is_active FROM c9_user WHERE is_active =1 AND user_id ='".$user_id."'");
				$stmt->execute(); 
				$result = count($stmt->fetchAll());
				if($result >0 ){
					$stmt->execute();				
					while($row = $stmt->fetch()){				
					  $photo = $baseUrl."/uploads/user/".$row['photo'];				 
					}
					$stmt->execute();
					$user = $stmt->fetchAll();
					$user[0]['photo'] = $photo;				
					$json = array("error" => false, "message" => $user[0]);
				}else{
					
					$json = array("error" => false, "message" =>"Not Found!");
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
	/*
	* Edit Profile
	*/
	public function editProfile($request, $response, $args){
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['user_id'])){		
			$user_id = $input['user_id'];
			$email = $input['email'];
			$mobile = $input['mobile'];
			$home_phone = $input['home_phone'];
			$gender = $input['gender'];
			$state = $input['state'];
			$photo = $input['photo'];	
			try{
				$stmt = $this->c->db->prepare("SELECT * FROM c9_user WHERE user_id='".$user_id."'");
				$stmt->execute(); 
				$nRows = count($stmt->fetchAll());
				if($nRows > 0){
					$stmt->execute(); 
					while($row = $stmt->fetch()){
						$oldPhoto = "uploads/user/".$row['photo'];
					}
					if(!empty($photo)){	
						$randName = md5(uniqid(rand() * time()));
						//decode the image
						$decodedImage = base64_decode($photo);
						$image_name = $user_id."_".$randName.".jpg";
						//upload the image
						$filepath = "uploads/user/";		
						$path = file_put_contents($filepath.$image_name, $decodedImage);		 					
						$stmt1 = $this->c->db->prepare("UPDATE `c9_user` SET `email` = '".$email."',`mobile` = '".$mobile."',`home_phone` = '".$home_phone."',`gender` = '".$gender."',`state` = '".$state."',`photo` = '".$image_name."'  WHERE `user_id` = '".$user_id."'");
						$result = $stmt1->execute();
						if($result){				
							//$profile_image_url = $baseUrl."/uploads/user/".$image_name;	 
							if($oldPhoto != "uploads/user/user-icon.png"){
								if(file_exists($oldPhoto)){					
								   unlink($oldPhoto);
								}				
							}
							$json = array("error" => false, "message" => "Updated successfully!"); 	
						}else{
						 
							$json = array("error" => true, "message" => "Database Error!");
						}				
						
					}else{
						$stmt2 = $this->c->db->prepare("UPDATE `c9_user` SET `email` = '".$email."',`mobile` = '".$mobile."',`home_phone` = '".$home_phone."',`gender` = '".$gender."',`state` = '".$state."'  WHERE `user_id` = '".$user_id."'");
						$result = $stmt2->execute();
						if($result){
								 
							$json = array("error" => false, "message" => "Updated successfully!"); 
								 
						}else{
								 
							$json = array("error" => true, "message" => "Database Error!");
						}
					}				
				}else{
					
					$json = array("error" => true, "message" =>"Invalid UserID!");
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
	/*
	* Comment and Suggestion
	*/
	public function addCommentSuggestion($request, $response, $args){
		$input = $request->getParsedBody();
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		if(!empty($input['email'])){		
			$name = $input['name'];
			$email = $input['email'];
			$comment_suggestion = $input['comment_suggestion'];
			$voice = $input['voice'];
			$rating = $input['rating'];	
			try{
				if(!empty($voice)){
					$randName = md5(uniqid(rand() * time()));
					//decode the image
					$decodedImage = base64_decode($voice);
					$file_name = $randName.".mp3";
					//upload the image
					$filepath = "uploads/user/comment/";		
					$result = file_put_contents($filepath.$file_name, $decodedImage);
					$stmt = $this->c->db->prepare("INSERT INTO `c9_comment_suggestion` (`name`, `email`, `comment_suggestion`, `voice`, `rating`) VALUES ('$name', '$email', '$comment_suggestion', '$file_name', '$rating')");	
				}else{
					$stmt = $this->c->db->prepare("INSERT INTO `c9_comment_suggestion` (`name`, `email`, `comment_suggestion`,`rating`) VALUES ('$name', '$email', '$comment_suggestion','$rating')");
				}
				
				if($stmt->execute()){
					
				$json = array("error" => false, "message" => "Thank you, We appreciate your feedback and will look into it immediately.");
					
				}else{
					
					$json = array("error" => true, "message" => "Database Error!");
				} 				
			}catch(PDOException $e){
					
					 $json = array("error" => true, "message" => $e->getMessage());
			}		
		}else{
			
			$json = array("error" => true, "message" =>"Email not empty!");
				
		}
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);	
		
		
	} 
}