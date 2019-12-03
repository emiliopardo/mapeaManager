<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;

use App\Entity\MapeaControl;
use App\Entity\MapeaControlConfig;
use App\Entity\MapSubCategory;

use Sonata\Form\Type\CollectionType;

final class MapeaConfiguredControlAdmin extends AbstractAdmin
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
            ->add('control', 'text')
            ->add('controlConfig', 'text', array('admin_code' => 'admin.mapea_control_config'))
            //->add('subcategory', array('admin_code' => 'admin.map_sub_category'))
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
            ->add('control', EntityType::class,  [
                'class' => MapeaControl::class,
                'choice_label' => function ($mapeaControl) {
                    return $mapeaControl->__toString();
                },
                'placeholder' => 'Select Mapea Control',
            ])
            ->add('controlConfig', EntityType::class,  [
                'class' => MapeaControlConfig::class,
                'choice_label' => function ($mapeaControlConfig) {
                    return $mapeaControlConfig->getDescription();
                },
                'placeholder' => 'Select Mapea Control Configuration',
            ],array('admin_code' => 'admin.mapea_control_config')
            )
            ->setHelps([
                'name' => 'Write a descriptive name.',
                'control' => 'Choice control.',
                'controlConfig' => 'Choice control configuration.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('name')
            ->add('control', 'text')
            ->add('controlConfig', 'text', array('admin_code' => 'admin.mapea_control_config'))
            //->add('subcategory', null, array('admin_code' => 'admin.map_sub_category'))
            ;
    }

    public function getTemplate($name)
    {
        switch ($name) {
            case 'edit':
                return 'Admin/MapeaConfiguredControlAdmin/edit/mapeaControlConfig.admin.html.twig';
                break;
            default:
                return parent::getTemplate($name);
                break;
        }
    }
}
