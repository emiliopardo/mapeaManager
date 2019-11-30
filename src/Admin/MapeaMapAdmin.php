<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;


use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Sonata\AdminBundle\Form\Type\ModelType;

use App\Entity\MapSubCategory;
use App\Entity\MapCategory;
use App\Entity\MapeaConfiguredControl;
use App\Entity\MapeaConfiguredPlugin;
use App\Entity\MapeaCore;
use App\Entity\MapeaLayerWMS;
use App\Entity\MapeaWMC;
use App\Entity\User;



use Sonata\AdminBundle\Route\RouteCollection;


final class MapeaMapAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('zoom')
            ->add('bbox')
            ->add('maxExtent')
            ->add('projection')
            ->add('center')
            ->add('label')
            ->add('resolutions')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('owner','text')
            //->add('zoom')
            //->add('bbox')
            //->add('maxExtent')
            //->add('projection')
            //->add('center')
            //->add('label')
            //->add('resolutions')
            ->add('mapeaCore','text')
            ->add('category', 'text', array('admin_code' => 'admin.map_sub_category'))
            ->add('subcategory', 'text', array('admin_code' => 'admin.map_sub_category'))
            ->add('_action', null, [
                'actions' => [
                    'view' => ['template' => 'Admin/list/list_action_view.html.twig',],
                    'show' => [],
                    'edit' => [],
                    'delete' => [],
                ],
            ]);
    }

    protected function configureFormFields(FormMapper $formMapper): void
    {
        $subject = $this->getSubject();
        //$formMapper
            //->add('id')
            
            

            if($this->isCurrentRoute('create')){
                $formMapper->tab('General', ['description' => 'This section contains general settings for maps'])
                    ->with('Category')
                        ->add('category', EntityType::class,  [
                            'class' => MapCategory::class,
                            'choice_label' => function ($mapCategory) {
                                return $mapCategory->__toString();
                            },
                            'placeholder' => 'Select Category',
                        ])

                        ->add('subcategory', EntityType::class,  [
                            'class' => MapSubCategory::class,
                            'choice_label' => function ($mapSubCategory) {
                                return $mapSubCategory->getname();
                            },
                            'placeholder' => 'Select Subcategory',
                            ],array('admin_code' => 'admin.map_sub_category')
                        )
                    ->end()          
                    ->with('Description')
                        ->add('name')
                        ->add('description')
                    ->end()
                ->end();
            }

            if($this->isCurrentRoute('edit')){
                $formMapper->tab('General', ['description' => 'This section contains general settings for maps'])
                    ->with('Owner', array('class'=>'col-md-6'))
                        ->add('owner', EntityType::class,  [
                            'class' => User::class,
                            'choice_label' => function ($user) {
                                return $user->__toString();
                            },
                            'placeholder' => 'Select Owner',
                        ])
                    ->end()
                    ->with('Category', array('class'=>'col-md-6'))
                        ->add('category', EntityType::class,  [
                            'class' => MapCategory::class,
                            'choice_label' => function ($mapCategory) {
                                return $mapCategory->__toString();
                            },
                            'placeholder' => 'Select Category',
                        ])

                        ->add('subcategory', EntityType::class,  [
                            'class' => MapSubCategory::class,
                            'choice_label' => function ($mapSubCategory) {
                                return $mapSubCategory->getname();
                            },
                            'placeholder' => 'Select Subcategory',
                            ],array('admin_code' => 'admin.map_sub_category')
                        )
                    ->end()          
                    ->with('Description')
                        ->add('name')
                        ->add('description')
                    ->end()
                ->end();
            }                                   
            $formMapper->tab('Options', ['description' => 'This section contains configurations options for maps'])
                ->with('Core')
                    ->add('mapeaCore', EntityType::class,  [
                        'class' => Mapeacore::class,
                        'choice_label' => function ($mapeaCore) {
                            return $mapeaCore->__toString();
                        },
                        'placeholder' => 'Select Mapea Version',
                    ])
                ->end()  
                ->with('Options')
                    ->add('zoom', ChoiceType::class, [
                        'placeholder' => 'Choose zoom level',
                        'required' => false,
                        'multiple' => false,
                        'choices' => [
                            '0' => '0',
                            '1' => '1',
                            '2' => '2',
                            '3' => '3',
                            '4' => '4',
                            '5' => '5',
                            '6' => '6',
                            '7' => '7',
                            '8' => '8',
                            '9' => '9',
                            '10' => '10',
                            '11' => '11',
                            '12' => '12',
                            '13' => '13',
                            '14' => '14',
                            '15' => '15',                     
                        ]
                    ])
                    ->add('bbox')
                    ->add('maxExtent')
                    ->add('projection', null, ['data' => 'EPSG:25830*m' ])
                    ->add('center')
                    ->add('label')
                    ->add('resolutions')
                ->end()
            ->end()
            ->tab('Controls', ['description' => 'This section contains controls for configure maps'])
                ->with('Controls')
                    /*
                    ->add('mapeaControls', EntityType::class, [
                        'class' => MapeaConfiguredControl::class,
                        'multiple' => true,
                        'expanded' => true,
                    ])
                    */
                    ->add('mapeaControls', ModelType::class, array(
                        'multiple' => true,
                    ))
                ->end()
            ->end()
            ->tab('Plugins', ['description' => 'This section contains plugins for configure maps'])
                ->with('Plugins')
                    ->add('mapeaPlugins', EntityType::class, [
                        'class' => MapeaConfiguredPlugin::class,
                        'multiple' => true,
                        'expanded' => true,
                    ])
                ->end()
            ->end()
            ->tab('layers', ['description' => 'This section contains layers and WMC the can be used for configure maps'])
                ->with('Layers WMS')
                    ->add('mapeaLayerWMS', EntityType::class, [
                        'class' => MapeaLayerWMS::class,
                        'multiple' => true,
                        'expanded' => true,
                    ])
                ->end()
                ->with('Web Map Context')
                    ->add('mapeaWMC', EntityType::class, [
                        'class' => MapeaWMC::class,
                        'multiple' => true,
                        'expanded' => true,
                    ])
                ->end()
            ->end()

            ->setHelps([
                'owner' => 'Select Owner for this map.',
                'category' => 'Select category for this map.',
                'subcategory' => 'Select subcategory for this map.',
                'name' => 'Write a descriptive name.',
                'description' => 'Write a brief description.',
                'mapeaCore' => 'Select mapea core version.',
                'zoom' => 'Select Zoom level.',
                'bbox' => 'Define a bbox for this maps. Example [323020,4126873,374759,4152013]',
                'maxExtent' => 'Define max extent for this map. Example [323020,4126873,374759,4152013]',
                'projection' => 'define projection. Default value is  EPSG:25830*m.',
                'center' => 'Define x,y center for this map. Example {x:211000,y:4040000,draw: true}',
                'label' => 'Write text for label. This label will be shown by default in map center, and can have html tags',
                'resolutions' => 'Define customs resolutions. Example [490.4640841686878, 296.4735539465016, 179.21101876124024]',
                'mapeaControls' => 'Select controls for this map',
                'mapeaPlugins' => 'Select plugins for this map.',
                'mapeaLayerWMS' => 'Select WMS layers for this map.',
                'mapeaWMC' => 'Select WMC files for this map.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            ->add('id')
            ->add('name')
            ->add('description')
            ->add('owner','text')
            ->add('zoom')
            ->add('bbox')
            ->add('maxExtent')
            ->add('projection')
            ->add('center')
            ->add('label')
            ->add('resolutions')
            ->add('mapeaCore','text')
            ->add('category','text')
            ->add('subcategory', 'text', array('admin_code' => 'admin.map_sub_category'))
            ->add('mapeaControls')
            ->add('mapeaPlugins')
            ;
    }

    public function prePersist($object)
    {
        if($this->isCurrentRoute('create')){
            $user = $this->getConfigurationPool()->getContainer()->get('security.token_storage')->getToken()->getUser();
            $object->setOwner($user);
        }
    }

    /*
    public function preUpdate($object)
    {
        $user = $this->getConfigurationPool()->getContainer()->get('security.token_storage')->getToken()->getUser();
        $object->setOwner($user);
    }
    */

    public function getTemplate($name)
    {
        switch ($name) {
            case 'edit':
                return 'Admin/mapSubCategory.admin.html.twig';
                break;
            default:
                return parent::getTemplate($name);
                break;
        }
    }

    protected function configureRoutes(RouteCollection $collection)
    {
        $collection ->add('view', $this->getRouterIdParameter().'/view');
    }
}
