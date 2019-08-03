<?php

namespace App\Repository;

use App\Entity\MapeaConfiguredPlugin;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapeaConfiguredPlugin|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapeaConfiguredPlugin|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapeaConfiguredPlugin[]    findAll()
 * @method MapeaConfiguredPlugin[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapeaConfiguredPluginRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapeaConfiguredPlugin::class);
    }

    // /**
    //  * @return MapeaConfiguredPlugin[] Returns an array of MapeaConfiguredPlugin objects
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
    public function findOneBySomeField($value): ?MapeaConfiguredPlugin
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
