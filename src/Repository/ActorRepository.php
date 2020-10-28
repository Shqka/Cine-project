<?php

namespace App\Repository;

use App\Entity\Actor;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Actor|null find($id, $lockMode = null, $lockVersion = null)
 * @method Actor|null findOneBy(array $criteria, array $orderBy = null)
 * @method Actor[]    findAll()
 * @method Actor[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ActorRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Actor::class);
    }

    public function showAllActors()
    {
        return $this->createQueryBuilder('a')
            ->orderBy('a.name')
            ->getQuery()
            ->execute();
    ;
    }

    public function search($term)
    {
        return $this->createQueryBuilder('actor')
            ->andWhere('actor.name LIKE :lib')
            ->setParameter('lib', '%'.$term.'%')
            ->getQuery()
            ->execute();
    }
}
