<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1894.7">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'Helvetica Neue'}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px 'Helvetica Neue'; min-height: 14.0px}
  </style>
</head>
<body>
<p class="p1">SELECT * FROM INTERVENTI_ATTREZZATURE<span class="Apple-converted-space"> </span></p>
<p class="p1">order by statino desc</p>
<p class="p1">--where statino = 2051739</p>
<p class="p2"><br></p>
<p class="p1">select *<span class="Apple-converted-space">  </span>FROM INTERVENTI_IDRANTI</p>
<p class="p1">where statino = 2051739</p>
<p class="p2"><br></p>
<p class="p1">select *<span class="Apple-converted-space">  </span>FROM<span class="Apple-converted-space">  </span>STATINI where chiave = 2051739</p>
<p class="p2"><br></p>
<p class="p1">insert into <span class="Apple-converted-space">  </span>INTERVENTI_IDRANTI (CHIAVE,<span class="Apple-converted-space">  </span>STATINO,<span class="Apple-converted-space">  </span>BOCCHELLO,<span class="Apple-converted-space">  </span>TIPO, RESET_DATA_COLLAUDO,<span class="Apple-converted-space">  </span>ANOMALIA,<span class="Apple-converted-space"> </span>DATA_CONTROLLO)</p>
<p class="p1">VALUES <span class="Apple-converted-space">                          </span>(2051757, 2051739,<span class="Apple-converted-space">    </span>1747970,<span class="Apple-converted-space">  </span>'O',<span class="Apple-converted-space">  </span>'F'<span class="Apple-converted-space"></span>,<span class="Apple-converted-space">  </span>'Manca sella', '2023-01-24')</p>
<p class="p2"><br></p>
<p class="p1">select * from IDRANTI_CLIENTI where CLIENTE = 1747887</p>
<p class="p2"><br></p>
<p class="p1">delete<span class="Apple-converted-space">  </span>FROM BOCCHELLI where IDRANTE = 1747968 and id_bocchello = 3</p>
<p class="p2"><br></p>
<p class="p1">SELECT *<span class="Apple-converted-space">  </span>FROM BOCCHELLI where CHIAVE = 2034454</p>
<p class="p2"><br></p>
<p class="p1">DELETE<span class="Apple-converted-space">  </span>FROM INTERVENTI_IDRANTI</p>
<p class="p1">where BOCCHELLO<span class="Apple-converted-space">  </span>= 2034454</p>
</body>
</html>
