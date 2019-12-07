<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Symfony\Component\Form\Extension\Core\Type\RangeType;
use Sonata\AdminBundle\Form\Type\ModelType;

final class MapeaLayerWMSMapConfiguredAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            ->add('mapeaLayerWMS')
            ->add('baseLayer')
            ->add('opacity')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            ->add('mapeaLayerWMS', 'text', array(
                'label'=>'WMS Layer',
            ))
            ->add('baseLayer')
            ->add('opacity')
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
            ->add('mapeaLayerWMS', ModelType::class, array(
                'multiple' => true,
                'required' => false,
                'label'=>'WMS Layer',
            ))
            ->add('opacity', RangeType::class, [
                'attr' => [
                    'min' => 0,
                    'max' => 1,
                    'step'=> 0.1,               
                    'class' => 'slider', 
                    'empty_data' => 1,    
                ],
                
            ])
            ->add('baseLayer', null, array(
                'label'=>'Base layer',
            )) 
            ->setHelps([
                'mapeaLayerWMS' => 'Select WMS Layer.',
                'opacity' => 'Set Opacity.',
                'baseLayer' => 'It is Base Layer?'
            ])         
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            ->add('mapeaLayerWMS', null, array(
                'label'=>'WMS Layer',
            ))
            ->add('mapeaLayerWMS.layerWMSUrl', null, array(
                'label'=>'WMS url',
            ))
            ->add('mapeaLayerWMS.layerName', null, array(
                'label'=>'WMS Layer Name',
            ))
            ->add('mapeaLayerWMS.layerStyle', null, array(
                'label'=>'WMS Layer Style',
            ))
            ->add('mapeaLayerWMS.image.urlPath', null, array(
                'label'=>'Custom legend',
                'template' => 'Admin/MapeaLayerWMSLegendImageAdmin/show/show_urlpath.html.twig',
                ))
            ->add('baseLayer', null, array(
                'label'=>'Base layer',
            ))
            ->add('opacity')
            ;
    }
}
