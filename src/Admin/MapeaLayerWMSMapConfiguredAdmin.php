<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

final class MapeaLayerWMSMapConfiguredAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('mapeaMap')
            ->add('mapeaLayerWMS')
            ->add('baseLayer')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('mapeaMap')
            ->add('mapeaLayerWMS')
            ->add('baseLayer')
            
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
            ->with('Mapa', array('class'=>'col-md-4'))
            ->add('mapeaMap')
            ->end()
            ->with('Capa', array('class'=>'col-md-8'))
            ->add('mapeaLayerWMS', null, [
                'attr' => ['style' => 'width:70%;']
            ])
            ->add('baseLayer', null, [
                'attr' => ['style' => 'width:30%;']
            ])
            ->end()          
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('mapeaMap')
            ->add('mapeaLayerWMS')
            ->add('baseLayer')
            ;
    }
}
