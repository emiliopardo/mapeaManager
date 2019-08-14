<?php

namespace App\Entity;

use App\Entity\MapeaControlConfig;

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

    /**
     * @ORM\Column(type="boolean")
     */
    private $configurable;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\MapeaControlConfig", mappedBy="mapeaControl", cascade={"persist"})
     */
    private $mapeaControlConfig;

    public function __construct()
    {
        $this->mapeaControlConfig = new ArrayCollection();
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

    public function getConfigurable(): ?bool
    {
        return $this->configurable;
    }

    public function setConfigurable(bool $configurable): self
    {
        $this->configurable = $configurable;

        if (!$configurable) {
            $defaultControlConfig = new MapeaControlConfig();
            $defaultControlConfig->setMapeaControl($this);
            $defaultControlConfig->setDescription('No parametrizable');
            $defaultControlConfig->setConfiguration('default');

            $this->addMapeaControlConfig($defaultControlConfig);

        }
        return $this;
    }

    /**
     * @return Collection|MapeaControlConfig[]
     */
    public function getMapeaControlConfig(): Collection
    {
        return $this->mapeaControlConfig;
    }

    public function addMapeaControlConfig(MapeaControlConfig $mapeaControlConfig): self
    {
        if (!$this->mapeaControlConfig->contains($mapeaControlConfig)) {
            $this->mapeaControlConfig[] = $mapeaControlConfig;
            $mapeaControlConfig->setMapeaControl($this);
        }

        return $this;
    }

    public function removeMapeaControlConfig(MapeaControlConfig $mapeaControlConfig): self
    {
        if ($this->mapeaControlConfig->contains($mapeaControlConfig)) {
            $this->mapeaControlConfig->removeElement($mapeaControlConfig);
            // set the owning side to null (unless already changed)
            if ($mapeaControlConfig->getMapeaControl() === $this) {
                $mapeaControlConfig->setMapeaControl(null);
            }
        }

        return $this;
    }

}
