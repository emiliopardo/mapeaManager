<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

use Sonata\AdminBundle\Form\Type\ModelType;


use Symfony\Bridge\Doctrine\Form\Type\EntityType;

use App\Entity\MapSubCategory;
use App\Entity\Group;

final class UserAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('username')
            #->add('usernameCanonical')
            ->add('email')
            #->add('emailCanonical')
            ->add('enabled')
            #->add('salt')
            #->add('password')
            ->add('lastLogin')
            #->add('confirmationToken')
            ->add('passwordRequestedAt')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('username')
            #->add('usernameCanonical')
            ->add('email')
            #->add('emailCanonical')
            ->add('enabled')
            #->add('salt')
            #->add('password')
            ->add('lastLogin')
            #->add('confirmationToken')
            #->add('passwordRequestedAt')
            #->add('roles')
            ->add('groups','array')
            ->add('subcategory', 'array', array('admin_code' => 'admin.map_sub_category'))
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
            ->add('username')
            #->add('usernameCanonical')
            ->add('email')
            #->add('emailCanonical')
            ->add('enabled')
            #->add('salt')
            ->add('password')
            #->add('lastLogin')
            #->add('confirmationToken')
            #->add('passwordRequestedAt')
            -> add('groups', ModelType::class,[
                'class' => Group::class,
                'multiple' => true,
                'btn_add' => false,
            ])

            
            ->add('subcategory', ModelType::class,  [
                'class' => MapSubCategory::class,
                'multiple' => true,
                'btn_add' => false,
            ],array('admin_code' => 'admin.map_sub_category')
            )
                  
            ->setHelps([
                'username' => 'Write username.',
                'email' => 'Write valid email.',
                'enabled' => 'Is the user enabled?.',
                'password' => 'Write password.',
                'groups' => 'Select group for user .',
                'subcategory' => 'Select categories for user.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('username')
            //->add('usernameCanonical')
            ->add('email')
            //->add('emailCanonical')
            ->add('enabled')
            //->add('salt')
            //->add('password')
            ->add('lastLogin')
            //->add('confirmationToken')
            //->add('passwordRequestedAt')
            ->add('groups')
            ->add('subcategory', null, array('admin_code' => 'admin.map_sub_category')
            );
    }
}
