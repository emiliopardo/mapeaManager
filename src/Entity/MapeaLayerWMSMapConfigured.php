<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaLayerWMSMapConfiguredRepository")
 */
class MapeaLayerWMSMapConfigured
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
     */
    private $mapeaMap;


    public function getId()
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

    public function __toString(){
        $string = '';
        if ($this->getBaseLayer()){
            $string=' (Capa Base)';
        }
        return $this->getMapeaLayerWMS()->getLayerName().$string;
    }
}
