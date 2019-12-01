<?php

namespace App\Repository;

use App\Entity\MapeaLayerWMSLegendImage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method MapeaLayerWMSLegendImage|null find($id, $lockMode = null, $lockVersion = null)
 * @method MapeaLayerWMSLegendImage|null findOneBy(array $criteria, array $orderBy = null)
 * @method MapeaLayerWMSLegendImage[]    findAll()
 * @method MapeaLayerWMSLegendImage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MapeaLayerWMSLegendImageRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, MapeaLayerWMSLegendImage::class);
    }

    // /**
    //  * @return MapeaLayerWMSLegendImage[] Returns an array of MapeaLayerWMSLegendImage objects
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
    public function findOneBySomeField($value): ?MapeaLayerWMSLegendImage
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
