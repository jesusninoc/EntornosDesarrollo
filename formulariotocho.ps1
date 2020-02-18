using assembly System.Windows.Forms
using namespace System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "formulario"
$Label.AutoSize = $True
$Form.MinimizeBox = $False
$Form.MaximizeBox = $True
$button = [Button] @{
 Text = 'boton 1'
}
$button1 = [Button] @{
 Text = 'boton 2'
 
}
$button2 = [Button] @{
 Text = 'boton 3'
 
}
$button3 = [Button] @{
 Text = 'boton '
 
}

$button.Location = New-Object System.Drawing.Point (20,100)
$button1.Location = New-Object System.Drawing.Point (80,100)
$button2.Location = New-Object System.Drawing.Point (140,100)
$button3.Location = New-Object System.Drawing.Point (100,100)

$button.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$img = [System.Drawing.Image]::Fromfile('C:\Users\Usuario DAM 1\Desktop\julian\LM\CSS\documentos\cervantes.jpg')
$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.Width = $img.Size.Width
$pictureBox.Height = $img.Size.Height
$pictureBox.Image = $img

$Label.Text = "imagen"
$Label.AutoSize = $True
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)
$Form.ShowDialog()

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
$Form.ShowDialog()


}

$button3.add_Click{


$Form = New-Object System.Windows.Forms.Form
$Label = New-Object System.Windows.Forms.Label
$Label.Text = "introducir texto"
$Label.AutoSize = $True
$Form.Controls.Add($Label)
$Form.ShowDialog()


}
$form.Controls.Add($button)
$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)
$Form.ShowDialog()