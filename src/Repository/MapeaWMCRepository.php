<?php

namespace App\Repository;

use App\Entity\MapeaWMC;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapeaWMC|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapeaWMC|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapeaWMC[]    findAll()
 * @method MapeaWMC[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapeaWMCRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapeaWMC::class);
    }

    // /**
    //  * @return MapeaWMC[] Returns an array of MapeaWMC objects
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
    public function findOneBySomeField($value): ?MapeaWMC
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
