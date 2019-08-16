<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapCategoryRepository")
 */
class MapCategory
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
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\MapeaMap", mappedBy="category")
     */
    private $mapeaMaps;

    public function __construct()
    {
        $this->mapeaMaps = new ArrayCollection();
    }

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

    public function __toString()
    {
        return $this->name;
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
            $mapeaMap->setCategory($this);
        }

        return $this;
    }

    public function removeMapeaMap(MapeaMap $mapeaMap): self
    {
        if ($this->mapeaMaps->contains($mapeaMap)) {
            $this->mapeaMaps->removeElement($mapeaMap);
            // set the owning side to null (unless already changed)
            if ($mapeaMap->getCategory() === $this) {
                $mapeaMap->setCategory(null);
            }
        }

        return $this;
    }
}
