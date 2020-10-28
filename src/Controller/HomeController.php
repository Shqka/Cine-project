<?php

namespace App\Controller;

use App\Entity\Actor;
use App\Entity\Comment;
use App\Entity\Film;
use App\Entity\News;
use App\Form\CommentType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use App\Form\ContactType;
use App\Repository\ActorRepository;
use App\Repository\FilmRepository;
use App\Repository\NewsRepository;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Common\Persistence\ObjectManager;
use Knp\Component\Pager\PaginatorInterface;

// use App\Service\Cart\CartService;




class HomeController extends AbstractController
{

    /**
     * @Route("/", name="home")
     */
    public function index(NewsRepository $repository)
    {
        $news = $repository->showAllNews(); 
        return $this->render('menu/home.html.twig', [
            'news' => $news
        ]);
    }


    /**
     * @Route("/faq", name="faq")
     */
    public function faq()
    {
        return $this->render('pages/faq.html.twig');
    }

    /**
     * @Route("/news", name="news")
     */
    public function news(NewsRepository $repository)
    {
        $news = $repository->showAllNews(); 
        
        return $this->render('menu/news.html.twig', [
            'news' => $news
        ]);
    }

    /**
     * @Route("/contact", name="contact")
     */
    public function contact(Request $request, \Swift_Mailer $mailer)
    {
        $form = $this->createForm(ContactType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $contactFormData = $form->getData();

            $message = (new \Swift_Message('Vous avez reçu un message de : ' . 
            $contactFormData['Nom'] . ' provenant de l\'email: ' . $contactFormData['Email']))
                ->setFrom($contactFormData['Email'])
                ->setTo('contactform1000@gmail.com')
                ->setBody($contactFormData['Message'], 'text/plain');

            $this->addFlash('success', 'Le message a bien été envoyé !');
            $mailer->send($message);

            return $this->redirectToRoute('contact');
        }

        return $this->render('menu/contact.html.twig', [
            'email_form' => $form->createView(),
        ]);
    }


    /**
     * @Route ("/search", name="search", methods={"GET","POST"})
     */
    public function search(FilmRepository $repository, ActorRepository $repo)
    {
        if (isset($_POST['search']) && !empty($_POST['search'])) {
            $films = $repository->search($_POST['search']);
            $actors = $repo->search($_POST['search']);
        }
        else { 
            $films = null;
            $actors = null; 
        }
        return $this->render('pages/search.html.twig', [
            'films' => $films,
            'actors' => $actors
        ]);   
    }


    /**
     * @Route ("/filter", name="filter", methods={"GET","POST"})
     */   
    public function filter(FilmRepository $repository)
    {
        if (isset($_POST['filterpost']) && !empty($_POST['filterpost'])) {
            $categories = $repository->filter($_POST['filterpost']);
        }
        else { $categories = null; }
        return $this->render('pages/filter.html.twig', [
            'categories' => $categories
        ]);   
    }


    /**
     * @Route("/films", name="films")
     */
    public function films(PaginatorInterface $paginator,  Request $request, FilmRepository $repo)
    {
        $films = $paginator->paginate(
            $repo->getFilms(),
            $request->query->getInt('page', 1),
            6
        );

        $categories = $repo->getFilmsCategories();

        return $this->render('menu/films.html.twig', [
            'films' => $films,
            'categories' => $categories
        ]);
    }


    /**
     * @Route("/series", name="series")
     */
    public function series(PaginatorInterface $paginator,  Request $request, FilmRepository $repo)
    {
        $series = $paginator->paginate(
            $repo->getSeries(),
            $request->query->getInt('page', 1),
            6
        );

        $categories = $repo->getSeriesCategories();

        return $this->render('menu/series.html.twig', [
            'series' => $series,
            'categories' => $categories
        ]);
    }


    /**
     * @Route("/documentaries", name="documentaries")
     */
    public function documentaries(PaginatorInterface $paginator,  Request $request, FilmRepository $repo)
    {
        $documentaries = $paginator->paginate(
            $repo->getDocumentaries(),
            $request->query->getInt('page', 1),
            6
        );

        $categories = $repo->getDocsCategories();

        return $this->render('menu/documentaries.html.twig', [
            'documentaries' => $documentaries,
            'categories' => $categories
        ]);
    }


    /**
     * @Route("/show/{id}", name="show")
     */
    public function show(Film $film, Request $request, ObjectManager $manager, ActorRepository $actors)
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        // Créer commentaire
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){

            $comment->setCreatedAt(new \DateTime())
                    ->setUser($this->getUser())
                    ->setFilm($film);

            $manager->persist($comment);
            $manager->flush();

            $this->addFlash('success', 'Votre commentaire a été posté !');

            return $this->redirectToRoute('show', ['id' => $film->getId()
            ]); 
        }

        return $this->render('pages/show-film.html.twig', [
            'film' => $film,
            'commentForm' =>$form->createView(),
            'actors' => $actors
        ]);
    }


    /**
     * @Route("/actor{id}", name="show_actor")
     */
    public function showActor(Actor $actor, Request $request, ObjectManager $manager) 
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        // Créer commentaire
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){

            $comment->setCreatedAt(new \DateTime())
                    ->setUser($this->getUser())
                    ->setActor($actor);

            $manager->persist($comment);
            $manager->flush();

            $this->addFlash('success', 'Votre commentaire a été posté !');

            return $this->redirectToRoute('show_actor', ['id' => $actor->getId()
            ]); 
        }

        return $this->render('pages/show-actor.html.twig', [
            'commentForm' =>$form->createView(),
            'actor' => $actor
        ]);
    }


    /**
     * @Route("/news{id}", name="news_show")
     */
    public function showNews(News $news, Request $request, ObjectManager $manager)
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);

        // Créer commentaire
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){

            $comment->setCreatedAt(new \DateTime())
                    ->setUser($this->getUser())
                    ->setNews($news);

            $manager->persist($comment);
            $manager->flush();

            $this->addFlash('success', 'Votre commentaire a été posté !');

            return $this->redirectToRoute('news_show', ['id' => $news->getId()
            ]); 
        }

        return $this->render('pages/show-news.html.twig', [
            'commentForm' =>$form->createView(),
            'news' => $news,
        ]);
    }


    /**
     * @Route("/mentions", name="mentions")
     */
    public function mentions() 
    {
        return $this->render('pages/mentions.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

}