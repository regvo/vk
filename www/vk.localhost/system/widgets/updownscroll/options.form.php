<?php

class formWidgetUpdownscrollOptions extends cmsForm {

    public function init() {

        return array(

            array(
                'type'   => 'fieldset',
                'title'  => LANG_OPTIONS,
                'childs' => array(

                    // расстояние в px от начала страницы после которого появляется кнопка
                    new fieldNumber('options:distance_scroll', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_DISTANCE_SCROLL,
                        'units'   => 'px',
                        'default' => 40
                    )),

                    // время прокрутки страницы к месту назначения
                    new fieldNumber('options:scroll_speed', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_SCROLL_SPEED,
                        'units'   => 'ms',
                        'default' => 600
                    )),

                    // z-index
                    new fieldNumber('options:z_index', array(
                        'title'   => 'z-index',
                        'default' => 99,
                        'hint'    => LANG_WD_UPDOWNSCROLL_POSITION_HINT
                    )),

                    // отступ сверху
                    new fieldNumber('options:position_top', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_POSITION_TOP,
                        'units'   => 'px'
                    )),

                    // отступ справа
                    new fieldNumber('options:position_right', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_POSITION_RIGHT,
                        'units'   => 'px'
                    )),

                    // отступ снизу
                    new fieldNumber('options:position_bottom', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_POSITION_BOTTOM,
                        'units'   => 'px',
                        'default' => 15
                    )),

                    // отступ слева
                    new fieldNumber('options:position_left', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_POSITION_LEFT,
                        'units'   => 'px',
                        'default' => 15
                    )),

                )
            ),

            //
            // настройки внешнего вида
            //
            array(
                'type'   => 'fieldset',
                'title'  => LANG_WD_UPDOWNSCROLL_OPTIONS_VIEW,
                'childs' => array(

                    // форма кнопки
                    new fieldList('options:btn_shape', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_BTN_SHAPE,
                        'default' => 'square',
			'items'   => array(
                            'round'  => LANG_WD_UPDOWNSCROLL_SHAPE_ROUND,
                            'square' => LANG_WD_UPDOWNSCROLL_SHAPE_SQUARE
                        )
                    )),

                    // размер кнопки
                    new fieldNumber('options:size', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_BTN_SIZE,
                        'units'   => 'px',
                        'default' => 50
                    )),

                    new fieldCheckbox('options:is_height', array(
                        'title' => LANG_WD_UPDOWNSCROLL_BTN_IS_HEIGHT,
                        'hint'  => LANG_WD_UPDOWNSCROLL_BTN_IS_HEIGHT_HINT
                    )),

                    // иконка стрелки
                    new fieldList('options:btn_icon', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_BTN_ICON,
                        'default' => 'angle',
			'items'   => array(
                            'pointer'  => LANG_WD_UPDOWNSCROLL_BTN_ICON_POINTER,
                            'angle' => LANG_WD_UPDOWNSCROLL_BTN_ICON_ANGLE
                        )
                    )),

                    // цвет кнопки
                    new fieldCaption('options:btn_color', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_BTN_COLOR,
                        'default' => '#34495E'
                    )),

                    // цвет кнопки при наведении курсора мыши
                    new fieldCaption('options:btn_color_hover', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_BTN_COLOR_HOVER,
                        'default' => '#27AE60'
                    )),

                    // цвет стрелки
                    new fieldCaption('options:icon_color', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_ICON_COLOR,
                        'default' => '#FFFFFF'
                    )),

                    //цвет стрелки при наведении курсора мыши
                    new fieldCaption('options:icon_color_hover', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_ICON_COLOR_HOVER,
                        'default' => '#FFFFFF',
                        'hint'    => LANG_WD_UPDOWNSCROLL_COLOR_HINT
                                   . LANG_WD_UPDOWNSCROLL_COLOR_SERVICES
                    )),

                )
            ),

            //
            // заголовки кнопки
            //
            array(
                'type'   => 'fieldset',
                'title'  => LANG_WD_UPDOWNSCROLL_OPTIONS_TITLES,
                'childs' => array(

                    // "Наверх"
                    new fieldCaption('options:title_up', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_TITLE_UP,
                        'default' => LANG_WD_UPDOWNSCROLL_TITLE_UP
                    )),

                    // "Вниз"
                    new fieldCaption('options:title_down', array(
                        'title'   => LANG_WD_UPDOWNSCROLL_TITLE_DOWN,
                        'default' => LANG_WD_UPDOWNSCROLL_TITLE_DOWN,
                    )),

                )
            )

        );

    }

}