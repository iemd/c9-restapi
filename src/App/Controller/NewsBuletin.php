<?php
namespace App\Controller;

class NewsBuletin extends Base{
	/*
	* News and Buletin slideshow
	*/
	public function newsBuletinSlideshow($request, $response, $args)
	{
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		try{	
			$stmt = $this->c->db->prepare("SELECT * FROM c9_news_buletin_slideshow WHERE status =1");
			$stmt->execute(); 
			$nRows = count($stmt->fetchAll());
			if($nRows > 0 ){
				$stmt->execute();
				$slideshow = $stmt->fetchAll();
				$i=0;
				foreach($slideshow as $slide){				
					$slideshow[$i]['image'] = $baseUrl."/uploads/slideshow/".$slide['image'];
					$i++;	
				}					
				$json = array("error" => false, "message" =>$slideshow);
			}else{
				
				$json = array("error" => false, "message" =>"Not Found!");
			}
		}catch(PDOException $e){
				
			$json = array("error" => true, "message" => $e->getMessage());
		}	
		
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}
	/*
	* Get News and Buletin
	*/
	public function getNewsAndBuletin($request, $response, $args)
	{
		$uri = $request->getUri();
		$baseUrl = $uri->getBaseUrl();
		try{	
			$stmt = $this->c->db->prepare("SELECT title,description,image,created_at FROM c9_news_buletin");
			$stmt->execute(); 
			$nRows = count($stmt->fetchAll());
			if($nRows > 0 ){
				$stmt->execute();
				$newsAndBuletins = $stmt->fetchAll();
				$i=0;
				foreach($newsAndBuletins as $newsAndBuletin){				
					$newsAndBuletins[$i]['image'] = $baseUrl."/uploads/slideshow/".$newsAndBuletin['image'];
					$i++;	
				}					
				$json = array("error" => false, "message" =>$newsAndBuletins);
			}else{
				
				$json = array("error" => false, "message" =>"Not Found!");
			}
		}catch(PDOException $e){
				
			$json = array("error" => true, "message" => $e->getMessage());
		}	
		
		$response->withHeader('Content-type', 'application/json');
		return $response->withJson($json);
	}	
}