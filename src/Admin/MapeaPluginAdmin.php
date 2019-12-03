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
            ->add('name')
            ->add('description')
            ->add('configurable')            
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
            ->setHelps([
                'name' => 'Write control name.',
                'description' => 'Write a brief description.',
                'configurable' => 'Is this control configurable?.',
                'javascript' => 'Write the url of the javascript mapea file (absolute url).',
                'style' => 'Write the url of the css mapea file (absolute url).',
                'code' => 'Write javascript code to load this plugin. (mapajs.addPlugin(new M.plugin.XXXX()))',
                'mapeaCore' => 'Choice mapea version.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            ->add('name')
            ->add('description')
            ->add('configurable')            
            ->add('javascript')
            ->add('style')
            ->add('code')
            ->add('mapeaCore', 'text')
            ;
    }

    public function postPersist($MapeaPlugin)
    {
        if (isset($configurable)) {
            $this-defaultPluginConfig();
        }
    }

    public function postUpdated($MapeaPlugin)
    {
        if ($configurable) {
            $this-defaultPluginConfig();
            //$this-defaultConfiguredControl();
        }
        
    }

    protected function defaultPluginConfig()
    {
        $mapeaPluginConfig = new MapeaPluginConfig();
        $mapeaPluginConfig->setDescription('este plugin no es parametrizable');
        $mapeaPluginConfig->setConfiguration('default');
        $mapeaPluginConfig->setMapeaPlugin($id);
    }

    protected function defaultConfiguredPlugin()
    {
        
    }
}
