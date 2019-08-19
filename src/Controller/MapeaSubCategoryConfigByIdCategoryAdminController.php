<?php

declare(strict_types=1);

namespace App\Controller;

use Sonata\AdminBundle\Controller\CRUDController;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\MapSubCategory;


final class MapeaSubCategoryConfigByIdCategoryAdminController extends CRUDController
{
    public function getMapSubCategoryAction(Request $request)
    {   $mapCategoryId = $request->request->get('id');
        $mapSubCategory = $this->getDoctrine()->getRepository(MapSubCategory::class)->findBy(array("category" => $mapCategoryId));
        return $this->render("Admin/mapSubCategory.html.twig", array("mapSubCategory" => $mapSubCategory));
    }
}
