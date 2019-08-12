<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;

use App\Entity\MapeaPlugin;
use App\Entity\MapeaPluginConfig;

final class MapeaConfiguredPluginAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('name')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('name')
            ->add('plugin','text')
            ->add('pluginConfig','text', array('admin_code' => 'admin.mapea_plugin_config'))
            ->add('_action', null, [
                'actions' => [
                    'show' => [],
                    'edit' => [],
                    'delete' => [],
                ],
            ]);
    }

    protected function configureFormFields(FormMapper $formMapper): void
    {
        $formMapper
            //->add('id')
            ->add('name')
            //->add('plugin')
            //->add('pluginConfig')
            ->add('plugin', EntityType::class,  [
                'class' => MapeaPlugin::class,
                'choice_label' => function ($mapeaPlugin) {
                    return $mapeaPlugin->__toString();
                },
                'placeholder' => 'Select Mapea Plugin',
            ])
            ->add('pluginConfig', EntityType::class,  [
                'class' => MapeaPluginConfig::class,
                'choice_label' => function ($mapeaPluginConfig) {
                    return $mapeaPluginConfig->getDescription();
                },
                'placeholder' => 'Select Mapea Plugin Configuration',
            ],array('admin_code' => 'admin.mapea_plugin_config'))
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('name')
            ->add('plugin','text')
            ->add('pluginConfig','text', array('admin_code' => 'admin.mapea_plugin_config'))
            ;
    }

    public function getTemplate($name)
    {
        switch ($name) {
            case 'edit':
                return 'Admin/mapeaPluginConfig.admin.html.twig';
                break;
            default:
                return parent::getTemplate($name);
                break;
        }
    }
}