<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Sonata\AdminBundle\Form\Type\ModelType;

final class MapeaLayerWMSAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('layerWMSUrl')
            ->add('layerName')
            ->add('layerTitle')
            ->add('LayerDescription')
            ->add('layerStyle')
            ->add('image')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('layerWMSUrl')
            ->add('layerName')
            ->add('layerTitle')
            ->add('LayerDescription')
            ->add('layerStyle')
            ->add('image')
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
            ->add('layerWMSUrl')
            ->add('layerName')
            ->add('layerTitle')
            ->add('LayerDescription')
            ->add('layerStyle',null, [
                'required'   => false,
                'empty_data'  => 'default',
            ])
            ->add('image', ModelType::class,[
                'required' =>false,
            ] )
            ->setHelps([
                'layerWMSUrl' => 'Write WMS service url.',
                'layerName' => 'Write Layer name, the same of the capabilities name.',
                'layerTitle' => 'Write Layer title.',
                'LayerDescription' => 'Write a brief description.',
                'layerStyle' => 'Select style representation.If this field is not filled in, the default value will be used.',
                'legendImage' => 'Select leyend image. If this field is not filled in, the default value will be used.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('layerWMSUrl')
            ->add('layerName')
            ->add('layerTitle')
            ->add('LayerDescription')
            ->add('layerStyle')
            ->add('image')
            ;
    }
}
