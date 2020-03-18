using assembly System.Windows.Forms
using namespace System.Windows.Forms
$Form  = New-Object System.Windows.Forms.Form

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "aplicacion"
$Label.AutoSize = $True
$Form.MinimizeBox = $False
$Form.MaximizeBox = $True
$Form.StartPosition = 'CenterScreen'
$button = [Button] @{
 Text = 'coronavirus '
}
$button2 = [Button] @{
 Text = 'datos '
}
$button3=[Button] @{
 Text = 'mostrar '
}

$button.Location = New-Object System.Drawing.Point (20,80)
$button.Size= New-Object System.Drawing.Size(100,20)

$button2.Location = New-Object System.Drawing.Point (100,80)
$button2.Size= New-Object System.Drawing.Size(100,20)

$button3.Location = New-Object System.Drawing.Point (180,80)
$button3.Size= New-Object System.Drawing.Size(100,20)

$button.add_Click{
Start-Process https://www.google.com/search?q='coronavirus'
}
$button2.add_Click{
$url='https://elpais.com/sociedad/2020-03-18/ultimas-noticias-del-coronavirus-y-el-estado-de-alarma-en-directo.html'
$result = Invoke-WebRequest $url
$informacion = $result.AllElements | Where Class -eq 'font_secondary color_gray_ultra_dark ' | %{$_.innerText}
$datos= $result.AllElements | Where Class -eq 'font_secondary color_gray_dark ' | %{$_.innerText}
$informacion,$datos | out-File "c:\Users\araceli\Desktop\documentito.txt"
}
$button3.add_Click{
Start-Process  C:\Users\araceli\Desktop\documentito.txt
}


$form.Controls.Add($button)
$form.Controls.Add($button2)
$form.Controls.Add($button3)
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)
$Form.ShowDialog()
