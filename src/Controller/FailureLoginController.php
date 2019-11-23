<?php

declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

use Symfony\Component\HttpFoundation\Request;


final class FailureLoginController extends AbstractController
{
    public function index()
    {  
        return $this->render("FailureLogin/failure_login.html.twig");
    }
}