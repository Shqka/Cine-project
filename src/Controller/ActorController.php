<?php

namespace App\Controller;

use App\Entity\Actor;
use App\Form\ActorType;
use App\Repository\ActorRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;

/**
 * @Route("/admin/actor")
 */
class ActorController extends AbstractController
{
    /**
     * @Route("/", name="actor_index", methods={"GET"})
     */
    public function index(ActorRepository $actorRepository, PaginatorInterface $paginator, Request $request): Response
    {
        $actors = $paginator->paginate(
            $actorRepository->showAllActors(),
            $request->query->getInt('page', 1),
            9
        );
        return $this->render('admin/actor/index.html.twig', [
            'actors' => $actors
        ]);
    }

    /**
     * @Route("/new", name="actor_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $actor = new Actor();
        $form = $this->createForm(ActorType::class, $actor);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($actor);
            $entityManager->flush();

            $this->addFlash('success', 'L\'acteur a bien été ajouté !');

            return $this->redirectToRoute('actor_index');
        }

        return $this->render('admin/actor/new.html.twig', [
            'actor' => $actor,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}/edit", name="actor_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Actor $actor): Response
    {
        $form = $this->createForm(ActorType::class, $actor);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            $this->addFlash('success', 'L\'acteur a bien été modifié !');

            return $this->redirectToRoute('actor_index');
        }

        return $this->render('admin/actor/edit.html.twig', [
            'actor' => $actor,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="actor_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Actor $actor): Response
    {
        if ($this->isCsrfTokenValid('delete'.$actor->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($actor);
            $entityManager->flush();

            $this->addFlash('success', 'L\'acteur a bien été retiré !');
        }

        return $this->redirectToRoute('actor_index');
    }
}
