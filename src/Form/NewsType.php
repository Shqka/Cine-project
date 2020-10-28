<?php

namespace App\Form;

use App\Entity\News;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class NewsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', null, [
                'label' => 'Titre',
            ])
            ->add('abstract', null, [
                'label' => 'Résumé',
            ])
            ->add('created_at', DateType::class, [
                'label' => 'Date de Publication',
                'widget' => 'single_text',
            ])
            ->add('description', null, [
                'label' => 'Contenu',
            ])
            ->add('author', null, [
                'label' => 'Auteur',
            ])
            ->add('imgone', null, [
                'label' => 'Image Principale',
            ])
            ->add('imgtwo', null, [
                'label' => 'Image 2 (facultatif)',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => News::class,
        ]);
    }
}
