<?php

declare(strict_types=1);

namespace App\Controller;

use Sonata\AdminBundle\Controller\CRUDController;

use Symfony\Component\HttpFoundation\RedirectResponse;


/*
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\HttpFoundation\Response;
*/

final class MapeaMapAdminController extends CRUDController
{
    public function viewAction()
    {
        $mapeaMap = $this->admin->getSubject();

        //return new RedirectResponse($this->admin->generateUrl('list'));
        return $this->render('Admin/viewMap/view.MapeaMap.admin.html.twig', ['mapeaMap' => $mapeaMap]);
        

        //return $this->json($mapeaMap);




        // Tip : Inject SerializerInterface $serializer in the controller method
        // and avoid these 3 lines of instanciation/configuration
        
        /*
        $encoders = [new JsonEncoder()]; // If no need for XmlEncoder
        $normalizers = [new ObjectNormalizer()];
        $serializer = new Serializer($normalizers, $encoders);
        */

        // Serialize your object in Json
        
        /*
        $jsonObject = $serializer->serialize($mapeaMap, 'json', [
        'circular_reference_handler' => function ($object) {
            return $object->getId();
            }
        ]);
        
        */
        // For instance, return a Response with encoded Json
        
        /*
        return new Response($jsonObject, 200, ['Content-Type' => 'application/json']);
        */
    }

}
