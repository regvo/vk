<?php $this->addCSS('templates/default/css/updownscroll.css'); ?>
<?php $this->addJS( $this->getJavascriptFileName('updownscroll.min') ); ?>

<svg style="position: absolute;" height="0" width="0" xmlns="http://www.w3.org/2000/svg">
    <defs>
        <?php if ($widget->options['btn_icon'] == 'angle') { ?>
            <symbol id="icon-up" viewBox="0 0 24 24">
                <path d="M12 8l-6 6 1.41 1.41L12 10.83l4.59 4.58L18 14z"/>
                <path d="M0 0h24v24H0z" fill="none"/>
            </symbol>
            <symbol id="icon-down" viewBox="0 0 24 24">
                <path d="M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z"/>
                <path d="M0 0h24v24H0z" fill="none"/>
            </symbol>
        <?php } ?>
        <?php if ($widget->options['btn_icon'] == 'pointer') { ?>
            <symbol id="icon-up" viewBox="0 0 24 24">
                <path d="M4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8-8 8z"/>
                <path d="M0 0h24v24H0V0z" fill="none"/>
            </symbol>
            <symbol id="icon-down" viewBox="0 0 24 24">
                <path d="M20 12l-1.41-1.41L13 16.17V4h-2v12.17l-5.58-5.59L4 12l8 8 8-8z"/>
                <path d="M0 0h24v24H0V0z" fill="none"/>
            </symbol>
        <?php } ?>
    </defs>
</svg>

<a href="#" class="btn-scroll-up hi-icon hidden " id="btn-scroll" title="<?php echo $widget->options['title_up']; ?>">
    <svg class="btn-scroll-up-icon"><use xlink:href="#icon-up"></use></svg>
</a>

<script>
    icms.updownscroll.setOptions({
        title: {
            up:     "<?php echo $widget->options['title_up']; ?>",
            down:   "<?php echo $widget->options['title_down']; ?>"
        },

        view: {
            shape:              "<?php echo $widget->options['btn_shape']; ?>",
            size:               <?php echo $widget->options['size']; ?>,
            is_heigh:           <?php echo !empty($widget->options['is_height']) ? 'true' : 'false'; ?>,
            btn_color:          "<?php echo $widget->options['btn_color']; ?>",
            btn_color_hover:    "<?php echo $widget->options['btn_color_hover']; ?>",
            icon_color:         "<?php echo $widget->options['icon_color']; ?>",
            icon_color_hover:   "<?php echo $widget->options['icon_color_hover']; ?>"
        },

        position: {
            <?php if ( !empty($widget->options['position_top'])    || $widget->options['position_top'] == "0")     { echo 'top: "'    . $widget->options['position_top']    . 'px",'; } ?>
            <?php if ( !empty($widget->options['position_right'])  || $widget->options['position_right'] == "0" )  { echo 'right: "'  . $widget->options['position_right']  . 'px",'; } ?>
            <?php if ( !empty($widget->options['position_bottom']) || $widget->options['position_bottom'] == "0" ) { echo 'bottom: "' . $widget->options['position_bottom'] . 'px",'; } ?>
            <?php if ( !empty($widget->options['position_left'])   || $widget->options['position_left'] == "0" )   { echo 'left: "'   . $widget->options['position_left']   . 'px"';  } ?>
        },

        distance:       <?php echo $widget->options['distance_scroll']; ?>,
        scroll_speed:   <?php echo $widget->options['scroll_speed']; ?>,
        z_index:        <?php echo $widget->options['z_index']; ?>

    });
</script>