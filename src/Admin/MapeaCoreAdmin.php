<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

final class MapeaCoreAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('version')
            ->add('description')
            //->add('configuration')
            //->add('javascript')
            //->add('style')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('version')
            ->add('description')
            //->add('configuration')
            //->add('javascript')
            //->add('style')
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
            ->add('version')
            ->add('description')
            ->add('configuration')
            ->add('javascript')
            ->add('style')
            ->setHelps([
                'version' => 'Write mapea version numbers (vx.x.x).',
                'description' => 'Write a brief description.',
                'configuration' => 'Write the url of the configuration mapea file (absolute url).',
                'javascript' => 'Write the url of the javascript mapea file (absolute url).',
                'style' => 'Write the url of the css mapea file (absolute url).',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('version')
            ->add('description')
            ->add('configuration')
            ->add('javascript')
            ->add('style')
            ;
    }
}
