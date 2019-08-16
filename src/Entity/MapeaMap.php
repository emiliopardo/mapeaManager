<?php

namespace App\Entity;

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

    public function getId(): ?int
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
}
