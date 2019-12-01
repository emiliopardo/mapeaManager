<?php

declare(strict_types=1);

namespace App\Admin;

use App\Entity\MapeaCore;
use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Form\Type\ModelListType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;

final class MapeaControlAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('configurable')            
            ->add('mapeaCore')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('name')
            ->add('description')
            ->add('configurable')            
            //->add('code')
            ->add('mapeaCore')
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
            ->add('code')
            ->add('mapeaCore', EntityType::class,  [
                'class' => MapeaCore::class,
                'choice_label' => function ($mapeaCore) {
                    return $mapeaCore->__toString();
                }
            ])
            ->setHelps([
                'name' => 'Write control name.',
                'description' => 'Write a brief description.',
                'configurable' => 'Is this control configurable?.',
                'code' => 'Write javascript code to load this control. (mapajs.addControls(new M.control.XXXXX)',
                'mapeaCore' => 'Choice mapea version.',
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
            ->add('code')
            ->add('mapeaCore', 'text')
            ;
    }

    public function postPersist($MapeaControl)
    {
        if (isset($configurable)) {
            $this-defaultControlConfig();
        }
    }

    public function postUpdated($MapeaControl)
    {
        if ($configurable) {
            $this-defaultControlConfig();
        }
        
    }

    protected function defaultControlConfig()
    {
        $mapeaControlConfig = new MapeaControlConfig();
        $mapeaControlConfig->setDescription('este control no es parametrizable');
        $mapeaControlConfig->setConfiguration('default');
        $mapeaControlConfig->setMapeaControl($id);
    }

    protected function defaultConfiguredControl()
    {
        
    }


}
