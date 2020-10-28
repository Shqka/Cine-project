<?php

namespace App\Controller;

use App\Service\Cart\CartService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Constraints\NotBlank;

/**
 * @Route("/user")
 */
class CartController extends AbstractController
{

    /**
     * @Route("/panier", name="cart_index")
     */
    public function index(CartService $cartService, Request $request)
    {
            $form = $this->get('form.factory')
            ->createNamedBuilder('payment-form')
            ->add('token', HiddenType::class, [
                'constraints' => [new NotBlank()],
            ])
            ->add('submit', SubmitType::class)
            ->getForm();
            
            if ($request->isMethod('POST')) {
                $form->handleRequest($request);
            
                if ($form->isValid()) {
                    // Si formulaire valide prend la clé API puis créé le paiement (*100 car l'amount est en centime)
                    \Stripe\Stripe::setApiKey('sk_test_rYNe2ojjVL0QonK3AoqRFjhB00FmxR6Mbh');
                    \Stripe\PaymentIntent::create([
                        'amount' => $cartService->getTotal() * 100,
                        'currency' => 'eur',
                        'payment_method_types' => ['card'],
                        'description' => 'Test paiement cineProject'
                    ]);

                    $this->addFlash('success', 'Paiement effectué avec succès !');

                    return $this->redirectToRoute('cart_index');
                }
            }
        return $this->render('menu/panier.html.twig', [
            'form' => $form->createView(),
            'stripe_public_key' => $this->getParameter('stripe_public_key'),
            'items' => $cartService->getFullCart(),
            'total' => $cartService->getTotal()
        ]);
    }



    /**
     * @Route("/panier/add/{id}", name="cart_add")
     */
    public function add($id, CartService $cartService) {

        $cartService->add($id);
        return $this->redirectToRoute("cart_index");
    }



    /**
    * @Route("/panier/remove/{id}", name="cart_remove")
    */
    public function remove($id, CartService $cartService){
        $cartService->remove($id);

        return $this->redirectToRoute("cart_index");
    }

}