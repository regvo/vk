<?php

function regvo_curl_load($url) {
  $ch      = curl_init();
  curl_setopt_array($ch, array(
      CURLOPT_URL            => $url,
      CURLOPT_USERAGENT      => 'Mozilla/5.0 (Windows NT 6.1; rv:8.0) Gecko/20100101 Firefox/8.0',
      CURLOPT_AUTOREFERER    => true, // имитация передачи реферера при редиректе
      CURLOPT_ENCODING       => "", // поддержка декодировния результата: identity, deflate и gzip
      CURLOPT_HEADER         => false, // отключение заголовков из вывода
      CURLOPT_RETURNTRANSFER => true, // результат в curl_exec()
      CURLOPT_CONNECTTIMEOUT => 60, // ограничение времени соединения
      CURLOPT_TIMEOUT        => 60, // ограничение времени выполнения cURL функции
      CURLOPT_FOLLOWLOCATION => true, // следовать по редиректам
      CURLOPT_MAXREDIRS      => 5, // максимальное кол-во редиректов
      CURLOPT_SSL_VERIFYPEER => false, // отключение проверки сертификата узла
      CURLOPT_SSL_VERIFYHOST => false, // отключение проверки сертификата хоста
  ));
  $result['content'] = curl_exec($ch);
  $result['errno']   = curl_errno($ch);
  $result['error']   = curl_error($ch); //$info = curl_getinfo($ch);
  curl_close($ch);
  return $result;
}
