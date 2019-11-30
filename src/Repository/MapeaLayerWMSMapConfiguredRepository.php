<?php

namespace App\Repository;

use App\Entity\MapeaLayerWMSMapConfigured;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method MapeaLayerWMSMapConfigured|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapeaLayerWMSMapConfigured|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapeaLayerWMSMapConfigured[]    findAll()
 * @method MapeaLayerWMSMapConfigured[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapeaLayerWMSMapConfiguredRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MapeaLayerWMSMapConfigured::class);
    }

    // /**
    //  * @return MapeaLayerWMSMapConfigured[] Returns an array of MapeaLayerWMSMapConfigured objects
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
    public function findOneBySomeField($value): ?MapeaLayerWMSMapConfigured
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
