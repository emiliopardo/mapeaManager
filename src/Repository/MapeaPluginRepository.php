<?php

namespace App\Repository;

use App\Entity\MapeaPlugin;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapeaPlugin|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapeaPlugin|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapeaPlugin[]    findAll()
 * @method MapeaPlugin[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapeaPluginRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapeaPlugin::class);
    }

    // /**
    //  * @return MapeaPlugin[] Returns an array of MapeaPlugin objects
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
    public function findOneBySomeField($value): ?MapeaPlugin
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
