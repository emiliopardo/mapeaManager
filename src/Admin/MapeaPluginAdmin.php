<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Form\Type\ModelListType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use App\Entity\MapeaCore;

final class MapeaPluginAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('configurable')            
            ->add('javascript')
            ->add('style')
            ->add('code')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('configurable')            
            ->add('javascript')
            ->add('style')
            ->add('code')
            ->add('mapeaCore','text')
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
            ->add('description')
            ->add('configurable')
            ->add('javascript')
            ->add('style')
            ->add('code')
            ->add('mapeaCore', EntityType::class,  [
                'class' => MapeaCore::class,
                'choice_label' => function ($mapeaCore) {
                    return $mapeaCore->__toString();
                }
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('configurable')            
            ->add('javascript')
            ->add('style')
            ->add('code')
            ->add('mapeaCore', 'text')
            ;
    }
}
