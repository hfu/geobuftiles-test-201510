# geobuftiles-test-201510
国土地理院ベクトルタイル提供実験の expermental_fgd (as of 2015-10-28) を tile to tile で GeoJSON から [geobuf](https://github.com/mapbox/geobuf) に変換してみる実験。

geobuf tiles というコンセプトはあり得るか確認するのが目的。

## 実施内容
- Node 版 json2geobuf を使って、デスクトップで変換を行い、圧縮率を確認する。
- geobuf データをブラウザで読み込んでみて、速度性能を確認する。

## 結果概要
- 圧縮率については、タイル単位で概ね 29% から 47% の範囲内、全体では 37% 程度となった。汎用の MessagePack を使うのと比べて、圧縮率が半分以下ととなっており、
