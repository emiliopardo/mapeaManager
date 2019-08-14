<?php

namespace App\Entity;

use App\Entity\MapeaPluginConfig;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaPluginRepository")
 */
class MapeaPlugin
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
    private $javascript;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $style;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaCore")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mapeaCore;

    /**
     * @ORM\Column(type="string", length=255, nullable=false)
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=255, nullable=false)
     */
    private $code;

    /**
     * @ORM\Column(type="boolean")
     */
    private $configurable;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\MapeaPluginConfig", mappedBy="mapeaPlugin", cascade={"persist"})
     */
    private $mapeaPluginConfig;

    public function __construct()
    
    {
        $this->mapeaPluginConfig = new ArrayCollection();
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

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getCode(): ?string
    {
        return $this->code;
    }

    public function setCode(?string $code): self
    {
        $this->code = $code;

        return $this;
    }

    public function getConfigurable(): ?bool
    {
        return $this->configurable;
    }

    public function setConfigurable(bool $configurable): self
    {
        $this->configurable = $configurable;

        if (!$configurable) {
            $defaultPluginConfig = new MapeaPluginConfig();
            $defaultPluginConfig->setMapeaPlugin($this);
            $defaultPluginConfig->setDescription('Este plugin no es parametrizable');
            $defaultPluginConfig->setConfiguration('default');

            $this->addMapeaPluginConfig($defaultPluginConfig);

        }

        return $this;
    }

    /**
     * @return Collection|MapeaPluginConfig[]
     */
    public function getMapeaPluginConfig(): Collection
    {
        return $this->MapeaPluginConfig;
    }

    public function addMapeaPluginConfig(MapeaPluginConfig $mapeaPluginConfig): self
    {
        if (!$this->mapeaPluginConfig->contains($mapeaPluginConfig)) {
            $this->mapeaPluginConfig[] = $mapeaPluginConfig;
            $mapeaPluginConfig->setMapeaPlugin($this);
        }

        return $this;
    }

    public function removeMapeaPluginConfig(MapeaPluginConfig $MapeaPluginConfig): self
    {
        if ($this->mapeaPluginConfig->contains($mapeaPluginConfig)) {
            $this->mapeaPluginConfig->removeElement($mapeaPluginConfig);
            // set the owning side to null (unless already changed)
            if ($mapeaPluginConfig->getMapeaPlugin() === $this) {
                $mapeaPluginConfig->setMapeaPlugin(null);
            }
        }

        return $this;
    }
}

