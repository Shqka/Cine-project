<?php

namespace App\Service\Cart;

use App\Repository\FilmRepository;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class CartService {

    protected $session;
    protected $filmRepository;

    public function __construct(SessionInterface $session, filmRepository $filmRepository)
    {
        $this->session = $session;
        $this->filmRepository = $filmRepository;
    }



    public function add(int $id){

        $panier = $this->session->get('panier', []);

        if(!empty($panier[$id])){
            $panier[$id]++;
        } else {
            $panier[$id] = 1;

        }

        $this->session->set('panier', $panier);
    }



    public function remove(int $id){

            $panier = $this->session->get('panier', []);

            if(!empty($panier[$id])) {
            unset($panier[$id]);
        }

        $this->session->set('panier', $panier);
    }



    public function getFullCart() : array {

        $panier = $this->session->get('panier', []);

        $panierWithData = [];

        foreach($panier as $id => $quantity) {
            $panierWithData[] = [
                'film' => $this->filmRepository->find($id),
                'quantity' => $quantity
            ];
        }
        return $panierWithData;
    }



    public function getTotal() : float {

        $total = 0;

            foreach($this->getFullCart() as $item) {
                $total += $item['film']->getPrice() * $item['quantity'];
            }
            return $total;
    }

}