<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapeaConfiguredPluginRepository")
 */
class MapeaConfiguredPlugin
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
     * @ORM\ManyToOne(targetEntity="App\Entity\MapeaPlugin")
     * @ORM\JoinColumn(nullable=false)
     */
    private $plugin;

    /**
     * @ORM\OneToOne(targetEntity="App\Entity\MapeaPluginConfig", cascade={"persist", "remove"})
     * @ORM\JoinColumn(nullable=false)
     */
    private $pluginConfig;

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

    public function getPlugin(): ?MapeaPlugin
    {
        return $this->plugin;
    }

    public function setPlugin(?MapeaPlugin $plugin): self
    {
        $this->plugin = $plugin;

        return $this;
    }

    public function getPluginConfig(): ?MapeaPluginConfig
    {
        return $this->pluginConfig;
    }

    public function setPluginConfig(MapeaPluginConfig $pluginConfig): self
    {
        $this->pluginConfig = $pluginConfig;

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }
}
