<?php

namespace App\Repository;

use App\Entity\MapCategory;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapCategory|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapCategory|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapCategory[]    findAll()
 * @method MapCategory[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapCategoryRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapCategory::class);
    }

    // /**
    //  * @return MapCategory[] Returns an array of MapCategory objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?MapCategory
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
