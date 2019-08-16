<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

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
            ->add('owner')
            //->add('zoom')
            //->add('bbox')
            //->add('maxExtent')
            //->add('projection')
            //->add('center')
            //->add('label')
            //->add('resolutions')
            ->add('mapeaCore')
            ->add('category')
            ->add('subcategory')
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
            //->add('zoom')
            ->tab('General')
                ->with('Owner', array('class'=>'col-md-6'))
                    ->add('owner')
                ->end()
                ->with('Category', array('class'=>'col-md-6'))
                    ->add('category')
                    ->add('subcategory')
                ->end()          
                ->with('Description')
                    ->add('name')
                    ->add('description')
                ->end()
            ->end()
            ->tab('Options')
                ->with('Core')
                    ->add('mapeaCore')
                ->end()  
                ->with('Options')
                    ->add('zoom', ChoiceType::class, [
                        'placeholder' => 'Choose an option',
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
                    ->add('projection')
                    ->add('center')
                    ->add('label')
                    ->add('resolutions')
                ->end()
            ->end()
            ->tab('Controls')
                ->with('Controls')
                    ->add('mapeaControls')
                ->end()
            ->end()
            ->tab('Plugins')
                ->with('Plugins')
                    ->add('mapeaPlugins')
                ->end()
            ->end()
            ->tab('layers')
                ->with('Layers WMS')
                    ->add('mapeaLayerWMS')
                ->end()
                ->with('Web Map Context')
                    ->add('mapeaWMC')
                ->end()
            ->end()
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            ->add('id')
            ->add('name')
            ->add('description')
            ->add('owner')
            ->add('zoom')
            ->add('bbox')
            ->add('maxExtent')
            ->add('projection')
            ->add('center')
            ->add('label')
            ->add('resolutions')
            ->add('mapeaCore')
            ->add('category')
            ->add('subcategory')
            ->add('mapeaControls')
            ->add('mapeaPlugins')
            ;
    }

    public function prePersist($object)
    {
 
        $user = $this->getConfigurationPool()->getContainer()->get('security.token_storage')->getToken()->getUser();
        $object->setOwner($user);
    }

    public function preUpdate($object)
    {
        $user = $this->getConfigurationPool()->getContainer()->get('security.token_storage')->getToken()->getUser();
        $object->setOwner($user);
    }
}
