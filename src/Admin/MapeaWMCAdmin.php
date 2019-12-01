<?php

declare(strict_types=1);

namespace App\Admin;

use Sonata\AdminBundle\Admin\AbstractAdmin;
use Sonata\AdminBundle\Datagrid\DatagridMapper;
use Sonata\AdminBundle\Datagrid\ListMapper;
use Sonata\AdminBundle\Form\FormMapper;
use Sonata\AdminBundle\Show\ShowMapper;
use Symfony\Component\Form\Extension\Core\Type\FileType;

final class MapeaWMCAdmin extends AbstractAdmin
{

    protected function configureDatagridFilters(DatagridMapper $datagridMapper): void
    {
        $datagridMapper
            ->add('title')
            ->add('updated')
            ;
    }

    protected function configureListFields(ListMapper $listMapper): void
    {
        $listMapper
            //->add('id')
            ->add('title')
            ->add('description')
            ->add('updated')
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
            ->add('title')
            ->add('description')
            ->add('file', FileType::class, [
                'required' => false
            ])
            ->setHelps([
                'tile' => 'Write a descriptive title.',
                'description' => 'Write a brief description.',
                'file' => 'Select WMC file to upload.',
            ])
            ;
    }

    protected function configureShowFields(ShowMapper $showMapper): void
    {
        $showMapper
            //->add('id')
            ->add('title')
            ->add('description')
            ->add('updated')
            ->add('systemFileName')
            ->add('originalFileName')
            ->add('urlPath','string', ['template' => 'Admin/MapeaWMCAdmin/show/show_urlpath.html.twig'])
            ->add('localPath')
            ;
    }

    public function prePersist($file)
    {
        $this->manageFileUpload($file);
    }

    public function preUpdate($file)
    {
        $this->manageFileUpload($file);
    }

    private function manageFileUpload($file)
    {
        if ($file->getFile()) {
            $file->refreshUpdated();
        }
    }
}
