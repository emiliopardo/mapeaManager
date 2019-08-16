<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaCoreRepository")
 */
class MapeaCore
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
    private $version;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $configuration;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $javascript;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $style;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\MapeaMap", mappedBy="mapeaCore")
     */
    private $mapeaMaps;

    public function __construct()
    {
        $this->mapeaMaps = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getVersion(): ?string
    {
        return $this->version;
    }

    public function setVersion(string $version): self
    {
        $this->version = $version;

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

    public function getJavascript(): ?string
    {
        return $this->javascript;
    }

    public function setJavascript(string $javascript): self
    {
        $this->javascript = $javascript;

        return $this;
    }

    public function getStyle(): ?string
    {
        return $this->style;
    }

    public function setStyle(string $style): self
    {
        $this->style = $style;

        return $this;
    }

    public function __toString():string
    {
        return $this->getVersion();
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

    /**
     * @return Collection|MapeaMap[]
     */
    public function getMapeaMaps(): Collection
    {
        return $this->mapeaMaps;
    }

    public function addMapeaMap(MapeaMap $mapeaMap): self
    {
        if (!$this->mapeaMaps->contains($mapeaMap)) {
            $this->mapeaMaps[] = $mapeaMap;
            $mapeaMap->setMapeaCore($this);
        }

        return $this;
    }

    public function removeMapeaMap(MapeaMap $mapeaMap): self
    {
        if ($this->mapeaMaps->contains($mapeaMap)) {
            $this->mapeaMaps->removeElement($mapeaMap);
            // set the owning side to null (unless already changed)
            if ($mapeaMap->getMapeaCore() === $this) {
                $mapeaMap->setMapeaCore(null);
            }
        }

        return $this;
    }
}
