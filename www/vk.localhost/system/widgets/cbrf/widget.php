<?php

class widgetCbrf extends cmsWidget {

  public function run() {
    $model           = new cmsModel();
    $result['ERROR'] = 0;
    $result          = $model->getItemById('cbrf', 1, function($item, $model) {
      $item['currency'] = $model->yamlToArray($item['currency']);
      return $item;
    });
    if ($result === false) {
      $res['ERROR']   = 1;
      $res['NOTDATA'] = LANG_CBRF_CURRENCY_NOT;
      return $res;
    }
    if ((strtotime($result['date']) + ($this->options['cache_interval'] * 60)) < time()) {
      $xml    = "http://www.cbr.ru/scripts/XML_daily.asp?date_req=" . date("d/m/Y");
      $result = $this->load($xml);
      if ($result['ERROR'] != 2) {
        $new_item = $model->update('cbrf', 1, $result);
      }
    }
    $template = cmsTemplate::getInstance();
    $template->addCSS('templates/default/widgets/cbrf/css/cbrf.css');
    return $this->to_tpl($result);
  }

  private function load($xml) {
    cmsCore::loadLib('regvo.helper');
    $r   = regvo_curl_load($xml);
    if ($r['errno'] == 0) {
      $xml     = simplexml_load_string($r['content']);
      $valutes = array();
      foreach ($xml->Valute AS $el) {
        $valutes[strval($el->CharCode)]['charcode'] = strval($el->CharCode);
        $valutes[strval($el->CharCode)]['value']    = strval($el->Value);
        $valutes[strval($el->CharCode)]['name']     = strval($el->Name);
        $valutes[strval($el->CharCode)]['nominal']  = strval($el->Nominal);
      }
      $result = ['date' => date('Y-m-d H:i:s'), 'currency' => $valutes];
    } else {
      $result['ERROR'] = 2;
    }
    return $result;
  }

  private function to_tpl($items) {
    $result = [];
    foreach ($items as $massiv) {
      foreach ($massiv as $key => $val) {
        if ($this->options[$key]) {
          $result['res'][$key] = [$val];
        }
      }
    }
    $result['ERROR'] = $items['ERROR'];
    if ($this->options['view_date']) {
      $this->title = LANG_CBRF_CURRENCY . LANG_CBRF_ON . date(cmsConfig::get('date_format'), strtotime($items['date']));
    }
    $result['NOM'] = false;
    if ($this->options['view_nominal']) {
      $result['NOM'] = true;
    }
    return $result;
  }

}
