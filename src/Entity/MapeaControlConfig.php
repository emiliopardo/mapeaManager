<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaControlConfigRepository")
 */
class MapeaControlConfig
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
    private $description;

    /**
     * @ORM\Column(type="text")
     */
    private $configuration;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaControl")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mapeaControl;

    public function getId()
    {
        return $this->id;
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

    public function getConfiguration(): ?string
    {
        return $this->configuration;
    }

    public function setConfiguration(string $configuration): self
    {
        $this->configuration = $configuration;

        return $this;
    }

    public function getMapeaControl(): ?MapeaControl
    {
        return $this->mapeaControl;
    }

    public function setMapeaControl(?MapeaControl $mapeaControl): self
    {
        $this->mapeaControl = $mapeaControl;

        return $this;
    }

    public function __toString()
    {
        return $this->description;
    }
}
