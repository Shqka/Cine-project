<?php

namespace App\Repository;

use App\Entity\Film;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;
use Doctrine\ORM\Query;

/**
 * @method Film|null find($id, $lockMode = null, $lockVersion = null)
 * @method Film|null findOneBy(array $criteria, array $orderBy = null)
 * @method Film[]    findAll()
 * @method Film[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class FilmRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Film::class);
    }

    public function getFilms(): Query
    {
        return $this->createQueryBuilder('a')
            ->orderBy('a.id', 'ASC')
            ->andWhere('a.genre LIKE :film')
            ->setParameter(':film', 0)
            ->getQuery()
        ;
    }

    public function getSeries(): Query
    {
        return $this->createQueryBuilder('b')
            ->orderBy('b.id', 'ASC')
            ->andWhere('b.genre LIKE :series')
            ->setParameter(':series', 1)
            ->getQuery()
        ;
    }

    public function getDocumentaries(): Query
    {
        return $this->createQueryBuilder('c')
            ->orderBy('c.id', 'ASC')
            ->andWhere('c.genre LIKE :documentary')
            ->setParameter(':documentary', 2)
            ->getQuery()
        ;
    }

    public function search($term)
    {
        return $this->createQueryBuilder('film')
            ->andWhere('film.title LIKE :lib')
            ->setParameter('lib', '%'.$term.'%')
            ->getQuery()
            ->execute();
    }

    public function filter($term)
    {
        return $this->createQueryBuilder('b')
            ->innerJoin('b.category', 'c')
            ->andWhere('c.title LIKE :lib')
            ->setParameter('lib', '%'.$term.'%')
            ->getQuery()
            ->execute();
    }

    public function getFilmsCategories()
    {
        return $this->createQueryBuilder('p')
        ->andWhere('p.genre LIKE :genre')
        ->setParameter('genre', 0)
        ->innerJoin('p.category', 'c')
        ->select('c.title')
        ->distinct()
        ->getQuery()
        ->getResult()
    ;
    }

    public function getSeriesCategories()
    {
        return $this->createQueryBuilder('p')
        ->andWhere('p.genre LIKE :genre')
        ->setParameter('genre', 1)
        ->innerJoin('p.category', 'c')
        ->select('c.title')
        ->distinct()
        ->getQuery()
        ->getResult()
    ;
    }

    public function getDocsCategories()
    {
        return $this->createQueryBuilder('p')
        ->andWhere('p.genre LIKE :genre')
        ->setParameter('genre', 2)
        ->innerJoin('p.category', 'c')
        ->select('c.title')
        ->distinct()
        ->getQuery()
        ->getResult()
    ;
    }
}
