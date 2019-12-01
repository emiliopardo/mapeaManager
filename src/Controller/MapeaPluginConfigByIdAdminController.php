<?php

declare(strict_types=1);

namespace App\Controller;

use Sonata\AdminBundle\Controller\CRUDController;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\MapeaPluginConfig;

final class MapeaPluginConfigByIdAdminController extends CRUDController
{
    public function getMapeaPluginConfigAction(Request $request)
    {   $mapeaPluginId = $request->request->get('id');
        $mapeaPluginConfig = $this->getDoctrine()->getRepository(MapeaPluginConfig::class)->findBy(array("mapeaPlugin" => $mapeaPluginId));
        return $this->render("Admin/MapeaPluginConfigByIdAdmin/mapeaPluginConfig.html.twig", array("mapeaPluginConfig" => $mapeaPluginConfig));
    }
}
