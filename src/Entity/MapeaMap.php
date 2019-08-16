<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaMapRepository")
 */
class MapeaMap
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
     * @ORM\Column(type="integer", nullable=true)
     */
    private $zoom;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $bbox;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $maxExtent;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $projection;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $center;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $label;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $resolutions;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\User", inversedBy="mapeaMaps")
     * @ORM\JoinColumn(nullable=false)
     */
    private $owner;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapSubCategory", inversedBy="mapeaMaps")
     * @ORM\JoinColumn(nullable=false)
     */
    private $subcategory;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaCore", inversedBy="mapeaMaps")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mapeaCore;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapeaConfiguredControl", inversedBy="mapeaMaps")
     */
    private $mapeaControls;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapeaConfiguredPlugin", inversedBy="mapeaMaps")
     */
    private $mapeaPlugins;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapeaWMC", inversedBy="mapeaMaps")
     */
    private $mapeaWMC;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapeaLayerWMS", inversedBy="mapeaMaps")
     */
    private $mapeaLayerWMS;

    public function __construct()
    {
        $this->mapeaControls = new ArrayCollection();
        $this->mapeaPlugins = new ArrayCollection();
        $this->mapeaWMC = new ArrayCollection();
        $this->mapeaLayerWMS = new ArrayCollection();
    }

    public function getId()
    {
        return $this->id;
    }

    public function getZoom(): ?int
    {
        return $this->zoom;
    }

    public function setZoom(?int $zoom): self
    {
        $this->zoom = $zoom;

        return $this;
    }

    public function getBbox(): ?string
    {
        return $this->bbox;
    }

    public function setBbox(?string $bbox): self
    {
        $this->bbox = $bbox;

        return $this;
    }

    public function getMaxExtent(): ?string
    {
        return $this->maxExtent;
    }

    public function setMaxExtent(?string $maxExtent): self
    {
        $this->maxExtent = $maxExtent;

        return $this;
    }

    public function getProjection(): ?string
    {
        return $this->projection;
    }

    public function setProjection(?string $projection): self
    {
        $this->projection = $projection;

        return $this;
    }

    public function getCenter(): ?string
    {
        return $this->center;
    }

    public function setCenter(?string $center): self
    {
        $this->center = $center;

        return $this;
    }

    public function getLabel(): ?string
    {
        return $this->label;
    }

    public function setLabel(?string $label): self
    {
        $this->label = $label;

        return $this;
    }

    public function getResolutions(): ?string
    {
        return $this->resolutions;
    }

    public function setResolutions(?string $resolutions): self
    {
        $this->resolutions = $resolutions;

        return $this;
    }

    public function getOwner(): ?User
    {
        return $this->owner;
    }

    public function setOwner(?User $owner): self
    {
        $this->owner = $owner;

        return $this;
    }

    public function getSubcategory(): ?MapSubCategory
    {
        return $this->subcategory;
    }

    public function setSubcategory(?MapSubCategory $subcategory): self
    {
        $this->subcategory = $subcategory;

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

    public function __toString()
    {
        return $this->name;
    }

    /**
     * @return Collection|MapeaConfiguredControl[]
     */
    public function getMapeaControls(): Collection
    {
        return $this->mapeaControls;
    }

    public function addMapeaControl(MapeaConfiguredControl $mapeaControl): self
    {
        if (!$this->mapeaControls->contains($mapeaControl)) {
            $this->mapeaControls[] = $mapeaControl;
        }

        return $this;
    }

    public function removeMapeaControl(MapeaConfiguredControl $mapeaControl): self
    {
        if ($this->mapeaControls->contains($mapeaControl)) {
            $this->mapeaControls->removeElement($mapeaControl);
        }

        return $this;
    }

    /**
     * @return Collection|MapeaConfiguredPlugin[]
     */
    public function getMapeaPlugins(): Collection
    {
        return $this->mapeaPlugins;
    }

    public function addMapeaPlugin(MapeaConfiguredPlugin $mapeaPlugin): self
    {
        if (!$this->mapeaPlugins->contains($mapeaPlugin)) {
            $this->mapeaPlugins[] = $mapeaPlugin;
        }

        return $this;
    }

    public function removeMapeaPlugin(MapeaConfiguredPlugin $mapeaPlugin): self
    {
        if ($this->mapeaPlugins->contains($mapeaPlugin)) {
            $this->mapeaPlugins->removeElement($mapeaPlugin);
        }

        return $this;
    }

    /**
     * @return Collection|MapeaWMC[]
     */
    public function getMapeaWMC(): Collection
    {
        return $this->mapeaWMC;
    }

    public function addMapeaWMC(MapeaWMC $mapeaWMC): self
    {
        if (!$this->mapeaWMC->contains($mapeaWMC)) {
            $this->mapeaWMC[] = $mapeaWMC;
        }

        return $this;
    }

    public function removeMapeaWMC(MapeaWMC $mapeaWMC): self
    {
        if ($this->mapeaWMC->contains($mapeaWMC)) {
            $this->mapeaWMC->removeElement($mapeaWMC);
        }

        return $this;
    }

    /**
     * @return Collection|MapeaLayerWMS[]
     */
    public function getMapeaLayerWMS(): Collection
    {
        return $this->mapeaLayerWMS;
    }

    public function addMapeaLayerWMS(MapeaLayerWMS $mapeaLayerWMS): self
    {
        if (!$this->mapeaLayerWMS->contains($mapeaLayerWMS)) {
            $this->mapeaLayerWMS[] = $mapeaLayerWMS;
        }

        return $this;
    }

    public function removeMapeaLayerWMS(MapeaLayerWMS $mapeaLayerWMS): self
    {
        if ($this->mapeaLayerWMS->contains($mapeaLayerWMS)) {
            $this->mapeaLayerWMS->removeElement($mapeaLayerWMS);
        }

        return $this;
    }
}
