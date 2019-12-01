<?php

declare(strict_types=1);

namespace App\Controller;

use Sonata\AdminBundle\Controller\CRUDController;

use Symfony\Component\HttpFoundation\RedirectResponse;

final class MapeaMapAdminController extends CRUDController
{
    public function viewAction()
    {
        $mapeaMap = $this->admin->getSubject();

        return $this->render('Admin/MapeaMapAdmin/viewMap/view.MapeaMap.admin.html.twig', ['mapeaMap' => $mapeaMap]);
    }

}
