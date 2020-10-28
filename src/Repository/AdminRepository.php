<?php

namespace App\Repository;

use App\Entity\Film;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Film|null find($id, $lockMode = null, $lockVersion = null)
 * @method Film|null findOneBy(array $criteria, array $orderBy = null)
 * @method Film[]    findAll()
 * @method Film[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdminRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Film::class);
    }

    public function showAllFilms()
    {
        return $this->createQueryBuilder('a')
            ->orderBy('a.title')
            ->andWhere('a.genre LIKE :genre')
            ->setParameter('genre', 0)
            ->getQuery()
            ->execute();
    ;
    }

    public function showAllSeries()
    {
        return $this->createQueryBuilder('b')
            ->orderBy('b.title')
            ->andWhere('b.genre LIKE :genre')
            ->setParameter('genre', 1)
            ->getQuery()
            ->execute();
    ;
    }

    public function showAllDocs()
    {
        return $this->createQueryBuilder('c')
            ->orderBy('c.title')
            ->andWhere('c.genre LIKE :genre')
            ->setParameter('genre', 2)
            ->getQuery()
            ->execute();
    ;
    }

}
