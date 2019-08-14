<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaLayerWMSRepository")
 */
class MapeaLayerWMS
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
    private $layerWMSUrl;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $layerName;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $layerTitle;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $LayerDescription;

    /**
     * @ORM\Column(type="string", length=255, nullable=true ,options={"default": "default"})
     */
    private $layerStyle;

    /**
     * @ORM\Column(type="string", length=255, nullable=true, options={"default": "default"})
     */
    private $layerLegend;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getLayerWMSUrl(): ?string
    {
        return $this->layerWMSUrl;
    }

    public function setLayerWMSUrl(string $layerWMSUrl): self
    {
        $this->layerWMSUrl = $layerWMSUrl;

        return $this;
    }

    public function getLayerName(): ?string
    {
        return $this->layerName;
    }

    public function setLayerName(string $layerName): self
    {
        $this->layerName = $layerName;

        return $this;
    }

    public function getLayerTitle(): ?string
    {
        return $this->layerTitle;
    }

    public function setLayerTitle(string $layerTitle): self
    {
        $this->layerTitle = $layerTitle;

        return $this;
    }

    public function getLayerDescription(): ?string
    {
        return $this->LayerDescription;
    }

    public function setLayerDescription(string $LayerDescription): self
    {
        $this->LayerDescription = $LayerDescription;

        return $this;
    }

    public function getLayerStyle(): ?string
    {
        return $this->layerStyle;
    }

    public function setLayerStyle(string $layerStyle): self
    {
        $this->layerStyle = $layerStyle;

        return $this;
    }

    public function getLayerLegend(): ?string
    {
        return $this->layerLegend;
    }

    public function setLayerLegend(string $layerLegend): self
    {
        $this->layerLegend = $layerLegend;

        return $this;
    }

    public function __toString()
    {
        return $this->layerName;
    }
}
