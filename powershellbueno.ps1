using assembly System.Windows.Forms
using namespace System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "aplicacion"
$Label.AutoSize = $True
$Form.MinimizeBox = $False
$Form.MaximizeBox = $True
$button = [Button] @{
 Text = 'enlace a pagina '
}
$button1 = [Button] @{
 Text = 'pagina  '
 
}
$button2 = [Button] @{
 Text = 'comentaios'
 
}
$button3 = [Button] @{
 Text = 'buscar producto '
 
}


$button.Location = New-Object System.Drawing.Point (20,80)
$button.Size= New-Object System.Drawing.Size(100,20)
$button1.Location = New-Object System.Drawing.Point (20,100)
$button2.Location = New-Object System.Drawing.Point (20,120)
$button3.Location = New-Object System.Drawing.Point (20,100)
$button3.Size= New-Object System.Drawing.Size(100,20)
$button4.Location = New-Object System.Drawing.Point (140,100)
$TextBox = New-Object System.Windows.Forms.TextBox
$TextBox.Location = New-Object System.Drawing.Size(20,220)
$TextBox.Size = New-Object System.Drawing.Size(260,20)

$Caja = New-Object System.Windows.Forms.TextBox
$Caja.Location = New-Object System.Drawing.Size(20,220)
$Caja.Size = New-Object System.Drawing.Size(260,20)


$button.add_Click{

Start-Process "https://www.pccomponentes.com/"


}
$button1.add_Click{

$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label

$Label.Text = "hola bienvenido a nuestra pagina"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog($form.Controls.Add($button3))


}

$button2.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "añadir comentarios"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$TextBox.Text;Write-Host "el comentario es " $Var;$Form.Close()}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
$Form.ShowDialog($Form.Controls.Add($TextBox))




}

$button3.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "introducir producto"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$Caja.Text;Start-Process https://www.pccomponentes.com/buscar/?query=$Var;
Start-Process https://www.google.com/search?q=$Var;
Start-Process https://www.amazon.es/s?k=$Var}})
$Form.Add_KeyDown({if ($_.KeyCode -eq "Escape"){$Form.Close()}})
$Form.ShowDialog($Form.Controls.Add($Caja))


}


$form.Controls.Add($button)
$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)

$Form.ShowDialog()