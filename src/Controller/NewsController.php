<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\News;
use App\Form\CommentType;
use App\Form\NewsType;
use App\Repository\NewsRepository;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/news")
 */
class NewsController extends AbstractController
{
    /**
     * @Route("/index", name="news_index", methods={"GET"})
     */
    public function indexNews(NewsRepository $newsRepository): Response
    {
        return $this->render('admin/news/index.html.twig', [
            'news' => $newsRepository->findAll(),
        ]);
    }

    /**
     * @Route("/new", name="news_new", methods={"GET","POST"})
     */
    public function newNews(Request $request): Response
    {
        $news = new News();
        $form = $this->createForm(NewsType::class, $news);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($news);
            $entityManager->flush();

            $this->addFlash('success', 'L\'article a bien été ajouté !');

            return $this->redirectToRoute('news_index');
        }

        return $this->render('admin/news/new.html.twig', [
            'news' => $news,
            'form' => $form->createView(),
        ]);
    }
    

    /**
     * @Route("/{id}/edit", name="news_edit", methods={"GET","POST"})
     */
    public function editNews(Request $request, News $news): Response
    {
        $form = $this->createForm(NewsType::class, $news);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash('success', 'L\'article a bien été édité !');

            return $this->redirectToRoute('news_index');
        }

        return $this->render('admin/news/edit.html.twig', [
            'news' => $news,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="news_delete", methods={"DELETE"})
     */
    public function deleteNews(Request $request, News $news): Response
    {
        if ($this->isCsrfTokenValid('delete'.$news->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($news);
            $entityManager->flush();

            $this->addFlash('success', 'L\'article a bien été retiré !');
        }

        return $this->redirectToRoute('news_index');
    }

}
