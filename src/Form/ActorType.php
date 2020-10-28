<?php

namespace App\Form;

use App\Entity\Actor;
use App\Entity\Film;
use App\Repository\FilmRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ActorType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', null, [
                'label' => 'Nom/Prénom',
            ])
            ->add('imgactor', null, [
                'label' => 'Photo',
            ])
            ->add('age', null, [
                'label' => 'Age',
            ])
            ->add('nationality', null, [
                'label' => 'Nationalité',
            ])
            ->add('birthday', DateType::class, [
                'label' => 'Date de naissance',
                'widget' => 'single_text',
                'format' => 'yyyy-MM-dd'
            ])
            ->add('description', null, [
                'label' => 'Description',
            ])
            ->add('films', EntityType::class, [
                'label' => 'Film',
                'class' => Film::class,
                'choice_label' => 'title',
                'query_builder' => function (FilmRepository $repo) {
                    return $repo->createQueryBuilder('f')
                        ->orderBy('f.title');
                },
                'expanded'  => true,
                'multiple'  => true
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Actor::class,
        ]);
    }
}
