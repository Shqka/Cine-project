<?php
 
namespace App\Repository;
 
use App\Entity\Comment;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;
 
/**
 * @method Comment|null find($id, $lockMode = null, $lockVersion = null)
 * @method Comment|null findOneBy(array $criteria, array $orderBy = null)
 * @method Comment[]    findAll()
 * @method Comment[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CommentRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Comment::class);
    }
 
    public function showAllComments()
    {
        return $this->createQueryBuilder('a')
        ->innerJoin('a.film', 'b')
        ->andWhere('b.id LIKE :id')
        ->setParameter('id', 'a.film_id')
        ->getQuery()
        ->getResult()
    ;
    }
 
}