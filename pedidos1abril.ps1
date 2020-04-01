
do{

$nombre= read-host 'di tu nombre'
$apellido= read-host 'di tu primer apellido apellido'
$numero= read-host 'di tu numero'
$producto=read-host 'introduce el producto'
Start-Process https://www.google.com/search?q=$producto;
$direccion=read-host 'introduce la direccion'
Start-Process https://www.google.es/maps/dir//$direccion;
$dia=read-host 'dinos que dia lo quieres'
write-host '---------------------------------------'

$escrito=Write-Host 'Buenas' $nombre, $apellido, 
'cuando el pedido esté  listo le enviaremos un mensaje a este numero de telefono:' $numero,
'su producto ('$producto')', 'será enviado a :' $direccion, 'y el dia que le llegará será:' $dia
write-host $escrito

$otro= Read-Host 'desea realizar otro pedido?'
if($otro -eq 'si'){
$nombre= read-host 'di tu nombre'
$apellido= read-host 'di tu primer apellido apellido'
$numero= read-host 'di tu numero'
$producto=read-host 'introduce el producto' 
Start-Process https://www.google.com/search?q=$producto;
$direccion=read-host 'introduce la direccion'
Start-Process https://www.google.es/maps/dir//$direccion;
$dia=read-host 'dinos que dia lo quieres'
write-host '---------------------------------------'
$escrito=Write-Host 'Buenas' $nombre, $apellido, 
'cuando el pedido esté  listo le enviaremos un mensaje a este numero de telefono:' $numero,
'su producto ('$producto')', 'será enviado a :' $direccion, 'y el dia que le llegará será:' $dia
write-host $escrito
$nombre, $apellido, $numero, $producto, $direccion,$dia| out-File "c:\Users\araceli\Desktop\tienda1.txt"
}else{Write-Host 'pedido realizado correctamente'}

$nombre, $apellido, $numero, $producto, $direccion,$dia| out-File "c:\Users\araceli\Desktop\tienda1.txt"

$informacion=Read-Host '¿desea ver los datos del pedido?'
if($informacion -eq'si'){
Start-Process c:\Users\araceli\Desktop\tienda1.txt
}else{Write-Host 'saliendo...'}


}while($otro -eq'si');



