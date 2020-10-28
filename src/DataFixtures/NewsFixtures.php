<?php

namespace App\DataFixtures;

use App\Entity\News;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class NewsFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = \Faker\Factory::create('fr_FR');
       
        for ($i = 1; $i <= 6 ; $i++) { 
            $news= new News();

            $news->setTitle($faker->sentence())
                 ->setAbstract($faker->sentence())
                 ->setCreatedAt($faker->dateTimeBetween('-6 months'))
                 ->setDescription($faker->paragraph())
                 ->setAuthor($faker->name())
                 ->setImgone($faker->imageUrl());
            
            $manager->persist($news);

        }
        

        $manager->flush();
    }
}
