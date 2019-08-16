<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity(repositoryClass="App\Repository\MapSubCategoryRepository")
 */
class MapSubCategory
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
     * @ORM\ManyToOne(targetEntity="App\Entity\MapCategory")
     * @ORM\JoinColumn(nullable=false)
     */
    private $category;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\User", mappedBy="subcategory")
     */
    private $users;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapeaConfiguredControl", mappedBy="subcategory")
     */
    private $mapeaConfiguredControls;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapeaConfiguredPlugin", mappedBy="subcategory")
     */
    private $mapeaConfiguredPlugins;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\MapeaMap", mappedBy="subcategory")
     */
    private $mapeaMaps;

    public function __construct()
    {
        $this->users = new ArrayCollection();
        $this->mapeaConfiguredControls = new ArrayCollection();
        $this->mapeaConfiguredPlugins = new ArrayCollection();
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

    public function getCategory(): ?MapCategory
    {
        return $this->category;
    }

    public function setCategory(?MapCategory $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }

    /**
     * @return Collection|User[]
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    public function addUser(User $user): self
    {
        if (!$this->users->contains($user)) {
            $this->users[] = $user;
            $user->addSubcategory($this);
        }

        return $this;
    }

    public function removeUser(User $user): self
    {
        if ($this->users->contains($user)) {
            $this->users->removeElement($user);
            $user->removeSubcategory($this);
        }

        return $this;
    }

    /**
     * @return Collection|MapeaConfiguredControl[]
     */
    public function getMapeaConfiguredControls(): Collection
    {
        return $this->mapeaConfiguredControls;
    }

    public function addMapeaConfiguredControl(MapeaConfiguredControl $mapeaConfiguredControl): self
    {
        if (!$this->mapeaConfiguredControls->contains($mapeaConfiguredControl)) {
            $this->mapeaConfiguredControls[] = $mapeaConfiguredControl;
            $mapeaConfiguredControl->addSubcategory($this);
        }

        return $this;
    }

    public function removeMapeaConfiguredControl(MapeaConfiguredControl $mapeaConfiguredControl): self
    {
        if ($this->mapeaConfiguredControls->contains($mapeaConfiguredControl)) {
            $this->mapeaConfiguredControls->removeElement($mapeaConfiguredControl);
            $mapeaConfiguredControl->removeSubcategory($this);
        }

        return $this;
    }

    /**
     * @return Collection|MapeaConfiguredPlugin[]
     */
    public function getMapeaConfiguredPlugins(): Collection
    {
        return $this->mapeaConfiguredPlugins;
    }

    public function addMapeaConfiguredPlugin(MapeaConfiguredPlugin $mapeaConfiguredPlugin): self
    {
        if (!$this->mapeaConfiguredPlugins->contains($mapeaConfiguredPlugin)) {
            $this->mapeaConfiguredPlugins[] = $mapeaConfiguredPlugin;
            $mapeaConfiguredPlugin->addSubcategory($this);
        }

        return $this;
    }

    public function removeMapeaConfiguredPlugin(MapeaConfiguredPlugin $mapeaConfiguredPlugin): self
    {
        if ($this->mapeaConfiguredPlugins->contains($mapeaConfiguredPlugin)) {
            $this->mapeaConfiguredPlugins->removeElement($mapeaConfiguredPlugin);
            $mapeaConfiguredPlugin->removeSubcategory($this);
        }

        return $this;
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
            $mapeaMap->setSubcategory($this);
        }

        return $this;
    }

    public function removeMapeaMap(MapeaMap $mapeaMap): self
    {
        if ($this->mapeaMaps->contains($mapeaMap)) {
            $this->mapeaMaps->removeElement($mapeaMap);
            // set the owning side to null (unless already changed)
            if ($mapeaMap->getSubcategory() === $this) {
                $mapeaMap->setSubcategory(null);
            }
        }

        return $this;
    }
}
