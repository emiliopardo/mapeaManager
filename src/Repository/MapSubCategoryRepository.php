<?php

namespace App\Repository;

use App\Entity\MapSubCategory;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapSubCategory|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapSubCategory|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapSubCategory[]    findAll()
 * @method MapSubCategory[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapSubCategoryRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapSubCategory::class);
    }

    // /**
    //  * @return MapSubCategory[] Returns an array of MapSubCategory objects
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
    public function findOneBySomeField($value): ?MapSubCategory
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
