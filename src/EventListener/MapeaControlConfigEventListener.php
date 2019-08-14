<?php

// src/EventListener/MapeaControlConfigEventListener.php

namespace App\EventListener;

use App\Entity\MapeaControlConfig;
use App\Entity\MapeaConfiguredControl;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

use Doctrine\Common\Persistence\Event\LifecycleEventArgs;


class MapeaControlConfigEventListener extends AbstractController
{
    public function postPersist(MapeaControlConfig $mapeaControlConfig,LifecycleEventArgs $args)
    {
        $entity = $args->getObject();
        if (!$entity instanceof MapeaControlConfig) {
            return;
        } elseif ($mapeaControlConfig->getConfiguration()=='default') {
            $mapeaConfiguredControl = new MapeaConfiguredControl();
            $mapeaConfiguredControl->setName($mapeaControlConfig->getMapeaControl());
            $mapeaConfiguredControl->setControlConfig($mapeaControlConfig);
            $mapeaConfiguredControl->setControl($mapeaControlConfig->getMapeaControl());

            $entityManager = $this->getDoctrine()->getManager();

            $entityManager->persist($mapeaConfiguredControl);

            $entityManager->flush();

        } else {
            return;
        }       
    }

    public function postUpdated(MapeaControlConfig $mapeaControlConfig,LifecycleEventArgs $args)
    {
        $entity = $args->getObject();

        if (!$entity instanceof MapeaControlConfig) {
            return;
        } elseif ($mapeaControlConfig->getConfiguration()=='default') {
            $mapeaConfiguredControl = new MapeaConfiguredControl();
            $mapeaConfiguredControl->setName($mapeaControlConfig->getMapeaControl());
            $mapeaConfiguredControl->setControlConfig($mapeaControlConfig);
            $mapeaConfiguredControl->setControl($mapeaControlConfig->getMapeaControl());

            $entityManager = $this->getDoctrine()->getManager();

            $entityManager->persist($mapeaConfiguredControl);

            $entityManager->flush();

        } else {
            return;
        }
    }
}