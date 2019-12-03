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
            ->add('mapeaLayerWMS')
            ->add('baseLayer')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            ->add('mapeaLayerWMS', 'text', array(
                'label'=>'WMS Layer',
            ))
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
            ->add('mapeaLayerWMS')
            ->add('baseLayer')          
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
            ;
    }
}
