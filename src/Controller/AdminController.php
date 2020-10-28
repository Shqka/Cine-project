<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Film;
use App\Form\CommentType;
use App\Form\FilmType;
use App\Repository\AdminRepository;
use App\Repository\CommentRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;

/**
 * @Route("/admin")
 */
class AdminController extends AbstractController
{

    /**
     * @Route("/", name="index", methods={"GET"})
     */
    public function index()
    {
        return $this->render('admin/index.html.twig');
    }


    /**
     * @Route("/film", name="film_index", methods={"GET"})
     */
    public function indexFilms(AdminRepository $repository, PaginatorInterface $paginator, Request $request): Response
    {
        $films = $paginator->paginate(
                $repository->showAllFilms(),
                $request->query->getInt('page', 1),
                6
        );
        return $this->render('admin/film/film.html.twig', [
            'films' => $films
        ]);
    }


    /**
     * @Route("/serie", name="serie_index", methods={"GET"})
     */
    public function indexSeries(AdminRepository $repository, PaginatorInterface $paginator, Request $request): Response
    {
        $series = $paginator->paginate(
                $repository->showAllSeries(),
                $request->query->getInt('page', 1),
                6
        );
        return $this->render('admin/serie/serie.html.twig', [
            'series' => $series
        ]);
    }


    /**
     * @Route("/doc", name="doc_index", methods={"GET"})
     */
    public function indexDocs(AdminRepository $repository, PaginatorInterface $paginator, Request $request): Response
    {
        $documentaries = $paginator->paginate(
                $repository->showAllDocs(),
                $request->query->getInt('page', 1),
                6
        );
        return $this->render('admin/documentary/documentary.html.twig', [
            'documentaries' => $documentaries
        ]);
    }


    /**
     * @Route("/new", name="film_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $film = new Film();
        $form = $this->createForm(FilmType::class, $film);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($film);
            $entityManager->flush();

            $this->addFlash('success', 'L\'élément a bien été créé !');

            return $this->redirectToRoute('index');
        }

        return $this->render('admin/new.html.twig', [
            'film' => $film,
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/{id}", name="comment_show", methods={"GET"})
     */
    public function show(Film $film, CommentRepository $comments): Response
    {
        return $this->render('admin/comment/showcomm.html.twig', [
            'film' => $film,
            'comments' => $comments->showAllComments()
        ]);
    }


    /**
     * @Route("/{id}/edit", name="film_edit", methods={"GET","POST"})
     */
    public function editFilm(Request $request, Film $film): Response
    {
        $form = $this->createForm(FilmType::class, $film);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash('success', 'L\'élément a bien été édité !');

            return $this->redirectToRoute('index');
        }

        return $this->render('admin/edit.html.twig', [
            'film' => $film,
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/{id}/editcomment", name="comment_edit", methods={"GET","POST"})
     */
    public function editComment(Request $request, Comment $comment): Response
    {
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash('success', 'Le commentaire a bien été édité !');

            return $this->redirectToRoute('index');
        }

        return $this->render('admin/comment/editcomm.html.twig', [
            'comment' => $comment,
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/{id}", name="film_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Film $film): Response
    {
        if ($this->isCsrfTokenValid('delete'.$film->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($film);
            $entityManager->flush();

            $this->addFlash('success', 'L\'élément a bien été supprimé !');
        }
        
        return $this->redirectToRoute('index');
    }


    /**
     * @Route("/comment/{id}", name="comment_delete", methods={"DELETE"})
     */
    public function deleteComment(Request $request, Comment $comment): Response
    {
        if ($this->isCsrfTokenValid('delete'.$comment->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($comment);
            $entityManager->flush();

            $this->addFlash('success', 'Le commentaire a bien été supprimé !');
        }

        return $this->redirectToRoute('index');
    }
    
}
