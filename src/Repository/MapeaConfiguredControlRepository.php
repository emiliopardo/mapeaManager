<?php

namespace App\Repository;

use App\Entity\MapeaConfiguredControl;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapeaConfiguredControl|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapeaConfiguredControl|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapeaConfiguredControl[]    findAll()
 * @method MapeaConfiguredControl[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapeaConfiguredControlRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapeaConfiguredControl::class);
    }

    // /**
    //  * @return MapeaConfiguredControl[] Returns an array of MapeaConfiguredControl objects
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
    public function findOneBySomeField($value): ?MapeaConfiguredControl
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
