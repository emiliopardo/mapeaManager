<?php

// src/EventListener/MapeaPluginConfigEventListener.php

namespace App\EventListener;

use App\Entity\MapeaPluginConfig;
use App\Entity\MapeaConfiguredPlugin;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

use Doctrine\Common\Persistence\Event\LifecycleEventArgs;


class MapeaPluginConfigEventListener extends AbstractController
{
    public function postPersist(MapeaPluginConfig $mapeaPluginConfig,LifecycleEventArgs $args)
    {
        $entity = $args->getObject();
        if (!$entity instanceof MapeaPluginConfig) {
            return;
        } elseif ($mapeaPluginConfig->getConfiguration()=='default') {
            $mapeaConfiguredPlugin = new MapeaConfiguredPlugin();
            $mapeaConfiguredPlugin->setName($mapeaPluginConfig->getMapeaPlugin());
            $mapeaConfiguredPlugin->setPluginConfig($mapeaPluginConfig);
            $mapeaConfiguredPlugin->setPlugin($mapeaPluginConfig->getMapeaPlugin());

            $entityManager = $this->getDoctrine()->getManager();

            $entityManager->persist($mapeaConfiguredPlugin);

            $entityManager->flush();

        } else {
            return;
        }       
    }

    public function postUpdated(MapeaPluginConfig $mapeaPluginConfig,LifecycleEventArgs $args)
    {
        $entity = $args->getObject();

        if (!$entity instanceof MapeaPluginConfig) {
            return;
        } elseif ($mapeaPluginConfig->getConfiguration()=='default') {
            $mapeaConfiguredPlugin = new MapeaConfiguredPlugin();
            $mapeaConfiguredPlugin->setName($mapeaPluginConfig->getMapeaPlugin());
            $mapeaConfiguredPlugin->setPluginConfig($mapeaPluginConfig);
            $mapeaConfiguredPlugin->setPlugin($mapeaPluginConfig->getMapeaPlugin());

            $entityManager = $this->getDoctrine()->getManager();

            $entityManager->persist($mapeaConfiguredPlugin);

            $entityManager->flush();

        } else {
            return;
        }
    }
}