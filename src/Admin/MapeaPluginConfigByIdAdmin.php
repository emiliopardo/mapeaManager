<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use Sonata\AdminBundle\Route\RouteCollection;

final class MapeaPluginConfigByIdAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('description')
            ->add('configuration')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('description')
            ->add('configuration')
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
            ->add('description')
            ->add('configuration')
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('description')
            ->add('configuration')
            ;
    }

    protected function configureRoutes(RouteCollection $collection)
    {
        $collection->add('getMapeaPluginConfig', 'mapea-plugin-config');
    }
}
