<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaConfiguredControlRepository")
 */
class MapeaConfiguredControl
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
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaControl")
     * @ORM\JoinColumn(nullable=false)
     */
    private $control;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\MapeaControlConfig", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $controlConfig;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapSubCategory", inversedBy="mapeaConfiguredControls")
     */
    private $subcategory;

    public function __construct()
    {
        $this->subcategory = new ArrayCollection();
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

    public function getControl(): ?MapeaControl
    {
        return $this->control;
    }

    public function setControl(?MapeaControl $control): self
    {
        $this->control = $control;

        return $this;
    }

    public function getControlConfig(): ?MapeaControlConfig
    {
        return $this->controlConfig;
    }

    public function setControlConfig(MapeaControlConfig $controlConfig): self
    {
        $this->controlConfig = $controlConfig;

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }

    /**
     * @return Collection|MapSubCategory[]
     */
    public function getSubcategory(): Collection
    {
        return $this->subcategory;
    }

    public function addSubcategory(MapSubCategory $subcategory): self
    {
        if (!$this->subcategory->contains($subcategory)) {
            $this->subcategory[] = $subcategory;
        }

        return $this;
    }

    public function removeSubcategory(MapSubCategory $subcategory): self
    {
        if ($this->subcategory->contains($subcategory)) {
            $this->subcategory->removeElement($subcategory);
        }

        return $this;
    }
}
