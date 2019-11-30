<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaLayerWMSMapConfiguredRepository")
 */
class MapeaLayerWMSMapConfigured
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="boolean")
     */
    private $baseLayer;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaLayerWMS")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mapeaLayerWMS;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaMap", inversedBy="mapeaLayersWMS")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mapeaMap;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBaseLayer(): ?bool
    {
        return $this->baseLayer;
    }

    public function setBaseLayer(bool $baseLayer): self
    {
        $this->baseLayer = $baseLayer;

        return $this;
    }

    public function getMapeaLayerWMS(): ?MapeaLayerWMS
    {
        return $this->mapeaLayerWMS;
    }

    public function setMapeaLayerWMS(?MapeaLayerWMS $mapeaLayerWMS): self
    {
        $this->mapeaLayerWMS = $mapeaLayerWMS;

        return $this;
    }

    public function getMapeaMap(): ?MapeaMap
    {
        return $this->mapeaMap;
    }

    public function setMapeaMap(?MapeaMap $mapeaMap): self
    {
        $this->mapeaMap = $mapeaMap;

        return $this;
    }
}
