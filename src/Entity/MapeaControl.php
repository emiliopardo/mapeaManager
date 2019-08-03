<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaControlRepository")
 */
class MapeaControl
{
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
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $code;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaCore")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mapeaCore;

    public function getId()
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(string $code): self
    {
        $this->code = $code;

        return $this;
    }

    public function getMapeaCore(): ?MapeaCore
    {
        return $this->mapeaCore;
    }

    public function setMapeaCore(?MapeaCore $mapeaCore): self
    {
        $this->mapeaCore = $mapeaCore;

        return $this;
    }

    public function __toString():string
    {
        return $this->getName()."_".$this->getMapeaCore();
    }
}
