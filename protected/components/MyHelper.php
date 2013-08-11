<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Helper
 *
 * @author Maks
 */
class MyHelper
{


    public static function render($el, $url, $data, $title)
    {
        if (isset($_POST['async'])) {
            echo json_encode(array('status' => 'success', 'data' => $el->renderPartial($url, $data, true), 'title' => $title));
        } else {
            $el->pageTitle = $title;
            $el->render($url, $data);
        }
    }

    public static function menu()
    {
        $tags = Tag::model()->findAll();
        $pgs = ProductsGroup::model()->findAll();
        $menu = array();
//==

        $menu['about'][] = array(
            'title' => 'О нас',
            'href' => '/site/about#about',
        );
        $menu['about'][] = array(
            'title' => 'Вакансии',
            'href' => '/site/about#vacancy',
        );
        $menu['about'][] = array(
            'title' => 'Контакты',
            'href' => '/site/about#contacts',
        );
        //==


        //==services
        $menu['services'][] = array(
            'title' => 'Проектирование и расчеты',
            'href' => '/site/services#design',
        );
        $menu['services'][] = array(
            'title' => 'Подбор оборудования',
            'href' => '/site/services#equipment',
        );
        $menu['services'][] = array(
            'title' => 'Автоматизация системы управления',
            'href' => '/site/services#aius',
        );
        $menu['services'][] = array(
            'title' => 'Монтаж теплого пола',
            'href' => '/site/services#automation',
        );
        $menu['services'][] = array(
            'title' => 'Монтаж водоотведения',
            'href' => '/site/services#sanitation',
        );
        $menu['services'][] = array(
            'title' => 'Установка сантехники',
            'href' => '/site/services#engineers',
        );
        $menu['services'][] = array(
            'title' => 'Вентиляция',
            'href' => '/site/services#ventilation',
        );
        //==

        if (!empty($tags)) {
            foreach ($tags as $tag) {
                $menu['works'][] = array(
                    'title' => $tag->text,
                    'href' => '/site/works#' . $tag->tag,
                );
            }
        } else {
            $menu['works'][] = array();
        }

        if (!empty($pgs)) {
            foreach ($pgs as $pg) {
                $menu['equipment'][] = array(
                    'title' => $pg->name,
                    'href' => '/site/equipment#' . $pg->name,
                );
            }
        } else {
            $menu['equipment'][] = array();
        }



        return $menu;
    }

}

?>
