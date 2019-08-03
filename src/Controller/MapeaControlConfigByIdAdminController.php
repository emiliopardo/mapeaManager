<?php

declare(strict_types=1);

namespace App\Controller;

use Sonata\AdminBundle\Controller\CRUDController;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\MapeaControlConfig;


final class MapeaControlConfigByIdAdminController extends CRUDController
{
    public function getMapeaControlConfigAction(Request $request)
    {   $mapeaControlId = $request->request->get('id');
        $mapeaControlConfig = $this->getDoctrine()->getRepository(MapeaControlConfig::class)->findBy(array("mapeaControl" => $mapeaControlId));
        return $this->render("Admin/mapeaControlConfig.html.twig", array("mapeaControlConfig" => $mapeaControlConfig));
    }
}
