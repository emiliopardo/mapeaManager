<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use App\Kernel;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
use Symfony\Component\Validator\Constraints as Assert;


/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaLayerWMSLegendImageRepository")
 * @ORM\HasLifecycleCallbacks()
 */
class MapeaLayerWMSLegendImage extends Kernel
{
    const SERVER_PATH_TO_UPLOAD_FOLDER = 'uploads/legends';
    /**
     * @var \Ramsey\Uuid\UuidInterface The user identifier
     * 
     * @ORM\Id()
     * @ORM\Column(type="uuid",unique=true)
     * @ORM\GeneratedValue(strategy="CUSTOM")
     * @ORM\CustomIdGenerator(class="Ramsey\Uuid\Doctrine\UuidGenerator")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $originalFileName;

    /**
     * @ORM\Column(type="string", length=100)
     */

    private $systemFileName;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $title;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    public function getDescription()
    {
        return $this->description;
    }

    public function setDescription($description) 
    {
        $this->description = $description;
        return $this;
    }


    /**
     * @ORM\Column(type="datetime")
     */
    private $updated;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $urlPath;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $localPath;

    /**
     * Unmapped property to handle image uploads
     */
     /**
     * @Assert\Image(
     *     maxSize = "1024k",
     *     mimeTypesMessage = "Only images are supported"
     * )
     */
    private $file;



    public function __construct()
    {
       
    }

    /**
     * @param UploadedFile $file
     */
    public function setFile(UploadedFile $file = null)
    {
        $this->file = $file;
    }

    /**
     * @return UploadedFile
     */
    public function getFile()
    {
        return $this->file;
    }

    /**
     * Manages the copying of the file to the relevant place on the server
     */
    public function upload()
    {
        // the file property can be empty if the field is not required
        if (null === $this->getFile()) {
            return;
        }

       // we use the original file name here but you should
       // sanitize it at least to avoid any security issues
       // move takes the target directory and target name as params
       $this->getFile()->move(
           self::SERVER_PATH_TO_UPLOAD_FOLDER,$this->getSystemFileName()
           #$this->getFile()->getClientOriginalName()
       );

       // set the path property to the name where you've saved the file
       $this->setOriginalFileName($this->getFile()->getClientOriginalName());
       
       $this->localPath = $this->getProjectDir().'/public/'.self::SERVER_PATH_TO_UPLOAD_FOLDER.'/'.$this->getSystemFileName();
       $this->urlPath = $this->getSystemFileName();

       // clean up the file property as you won't need it anymore
       $this->setFile(null);
    }

    /**
    * @ORM\PrePersist
    * @ORM\PreUpdate
    */
    public function lifecycleFileUpload()
    {
        $this->systemFileName = $this->setSystemFileName($this->getFile()->getClientOriginalExtension());
        $this->upload();
    }

    /**
     * @ORM\PostRemove()
     */
    public function removeUpload()
    {
        if ($file = $this->getLocalPath()) {
            unlink($file);
        }
    }

    /**
    * Updates the hash value to force the preUpdate and postUpdate events to fire.
    */
    public function refreshUpdated()
    {
        $this->setUpdated(new \DateTime());
    }
    
    public function getId()
    {
        return $this->id;
    }

    public function getOriginalFileName(): ?string
    {
        return $this->originalFileName;
    }

    public function setOriginalFileName(string $originalFileName):self
    {
        $this->originalFileName = $originalFileName;
        return $this;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getUpdated(): ?\DateTimeInterface
    {
        return $this->updated;
    }

    public function setUpdated(\DateTimeInterface $updated): self
    {
        $this->updated = $updated;

        return $this;
    }

    public function getUrlPath(): string
    {
        return $this->urlPath;
    }

    public function setUrlPath($urlPath): self
    {
        $this->urlPath = $urlPath;

        return $this;
    }

    public function getLocalPath(): string
    {
        return $this->localPath;
    }

    public function setLocalPath($localPath): self
    {
        $this->localPath = $localPath;

        return $this;
    }

    public function getSystemFileName()
    {
        return $this->systemFileName;
    }


    public function setSystemFileName(string $extension)
    {
        $this->extension=$extension;
        $uuid4 = Uuid::uuid4();
        return $uuid4->toString().'.'.$this->extension;
    }

    public function __toString()
    {
        return $this->getTitle();
    }

    

}
