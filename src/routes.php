<?php
// Routes
$app->post('/signup', 'App\Controller\User:signup');
$app->get('/verify[/{user_id}[/{code}]]', 'App\Controller\User:verifyEmail');
$app->post('/login', 'App\Controller\User:login');
$app->get('/getProfile[/{user_id}]', 'App\Controller\User:getProfile');
$app->post('/editProfile', 'App\Controller\User:editProfile');
$app->post('/addCommentSuggestion', 'App\Controller\User:addCommentSuggestion');

$app->post('/introducerSignUp', 'App\Controller\Introducer:introducerSignUp');
$app->get('/getQrCode[/{introducer_id}]', 'App\Controller\Introducer:getQrCode');

$app->post('/tableReservation', 'App\Controller\TableReservation:reservation');

$app->get('/newsBuletinSlideshow','App\Controller\NewsBuletin:newsBuletinSlideshow');
$app->get('/getNewsAndBuletin','App\Controller\NewsBuletin:getNewsAndBuletin');

$app->post('/specialPromotion/searchForFood', 'App\Controller\SpecialPromotion:searchForFood');	
$app->get('/getSpecialPromotion[/{item_id}]', 'App\Controller\SpecialPromotion:getSpecialPromotion');
$app->get('/getPaidItems[/{user_id}]', 'App\Controller\SpecialPromotion:getPaidItems');

$app->get('/menu/getMenuItems', 'App\Controller\Menu:getMenuItems');	
$app->post('/menu/searchForFood', 'App\Controller\Menu:searchForFood');	
$app->get('/getItemDetails[/{item_id}]', 'App\Controller\Menu:getItemDetails');

$app->get('/event/getEvents[/{time}]', 'App\Controller\Event:getEvents');	
