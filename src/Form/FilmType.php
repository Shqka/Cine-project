<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Film;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FilmType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('genre', ChoiceType::class, [
                'label' => 'Genre',
                'choices' => $this->getChoices()
            ])
            ->add('title', null, [
                'label' => 'Titre',
            ])
            ->add('image', null, [
                'label' => 'Affiche',
            ])
            ->add('listimg', null, [
                'label' => 'Image du block',
            ]) 
            ->add('background', null, [
                'label' => 'Fond d\'écran',
            ])
            ->add('category', EntityType::class, [
                'label' => 'Catégorie',
                'class' => Category::class,
                'choice_label' => 'title'
            ])
            ->add('createdAt', DateType::class, [
                'label' => 'Date de sortie',
                'widget' => 'single_text',
                'format' => 'yyyy-MM-dd'
            ])
            ->add('content', null, [
                'label' => 'Synopsis',
            ])
            ->add('youtube')
            ->add('price', null, [
                'label' => 'Prix',
            ])
            ->add('director', null, [
                'label' => 'Réalisateur',
            ])
            ->add('duration', null, [
                'label' => 'Durée (en heure)',
            ])         
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Film::class,
        ]);
    }

    private function getChoices()
    {
        $choices = Film::GENRE;
        $output= [];
        foreach ($choices as $key => $value) {
            $output[$value] = $key;
        }
        return $output;
    }
}
