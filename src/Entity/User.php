<?php
// src/Entity/User.php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Group;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @var \Ramsey\Uuid\UuidInterface The user identifier
     * 
     * @ORM\Id()
     * @ORM\Column(type="uuid",unique=true)
     * @ORM\GeneratedValue(strategy="CUSTOM")
     * @ORM\CustomIdGenerator(class="Ramsey\Uuid\Doctrine\UuidGenerator")
     */
    protected $id;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Group")
     * @ORM\JoinTable(name="fos_user_user_group",
     *      joinColumns={@ORM\JoinColumn(name="user_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="group_id", referencedColumnName="id")}
     * )
     */
    protected $groups;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\MapSubCategory", inversedBy="users")
     */
    private $subcategory;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\MapeaMap", mappedBy="owner")
     */
    private $mapeaMaps;

    public function __construct()
    {
        parent::__construct();
        $this->subcategory = new ArrayCollection();
        $this->mapeaMaps = new ArrayCollection();
        $this->groups = new ArrayCollection();
    }

    public function setPassword($password)
    {
        $this->password = password_hash($password, PASSWORD_BCRYPT);

        return $this;
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
            $mapeaMap->setOwner($this);
        }

        return $this;
    }

    public function removeMapeaMap(MapeaMap $mapeaMap): self
    {
        if ($this->mapeaMaps->contains($mapeaMap)) {
            $this->mapeaMaps->removeElement($mapeaMap);
            // set the owning side to null (unless already changed)
            if ($mapeaMap->getOwner() === $this) {
                $mapeaMap->setOwner(null);
            }
        }

        return $this;
    }
}