<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

final class MapSubCategoryAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('category', 'text')
            ->add('users', 'array')
            ->add('mapeaConfiguredControls', 'array')
            ->add('mapeaConfiguredPlugins', 'array')
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
            ->add('category')
            ->add('users')
            ->add('mapeaConfiguredControls')
            ->add('mapeaConfiguredPlugins')
            ->add('description')
            ->setHelps([
                'name' => 'Write a descriptive name.',
                'category' => 'Select parent category.',
                'users' => 'Assign users to this subcategory.',
                'mapeaConfiguredControls' => 'Assign configured controls to this subcategory.',
                'mapeaConfiguredPlugins' => 'Assign configured plugins to this subcategory.',
                'description' => 'Write a brief description.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('name')
            ->add('category', 'text')
            ->add('users', 'array')
            ->add('mapeaConfiguredControls', 'array')
            ->add('mapeaConfiguredPlugins', 'array')            
            ->add('description')
            ;
    }
}
