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
 Text = 'comprobar '
}
$button1 = [Button] @{
 Text = 'coronavirus '
}
$button2 = [Button] @{
 Text = 'datos '
}
$button3=[Button] @{
 Text = 'mostrar '
}
$button4= [Button] @{
 Text = 'mapa '
}

$button5= [Button] @{
 Text = 'Nº infectados '
}

$button.Location = New-Object System.Drawing.Point (55,100)
$button.Size= New-Object System.Drawing.Size(85,20)

$button1.Location = New-Object System.Drawing.Point (15,80)
$button1.Size= New-Object System.Drawing.Size(85,20)

$button2.Location = New-Object System.Drawing.Point (100,80)
$button2.Size= New-Object System.Drawing.Size(85,20)

$button3.Location = New-Object System.Drawing.Point (180,80)
$button3.Size= New-Object System.Drawing.Size(85,20)

$button4.Location = New-Object System.Drawing.Point (130,100)
$button4.Size= New-Object System.Drawing.Size(85,20)

$button5.Location = New-Object System.Drawing.Point (100,120)
$button5.Size= New-Object System.Drawing.Size(85,20)

$TextBox = New-Object System.Windows.Forms.TextBox
$TextBox.Location = New-Object System.Drawing.Size(20,220)
$TextBox.Size = New-Object System.Drawing.Size(260,20)

$Form.KeyPreview = $True
$Form.Add_KeyDown({if ($_.KeyCode -eq "Enter"){$Var=$TextBox.Text;$Var | out-File "C:\Users\araceli\Desktop\sintomas.txt"}})
$Form.Controls.Add($TextBox)

$button.add_Click{
$listaR = (Get-Content C:\Users\araceli\Desktop\sintomas.txt)
$lista = (Get-Content C:\Users\araceli\Desktop\sintomascovid.txt)
if($lista -contains $listaR){
Write-Host "tienes el coronavirus "
}else{Write-Host "no tienes el coronavirus "}

}

$button1.add_Click{
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
$button4.add_Click{
Start-Process 'https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6'
}
$button5.add_Click{
$url='https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6'
$result = Invoke-WebRequest $url
$informacion = $result.AllElements | Where style -eq 'color:#e60000' | %{$_.innerText}
$informacion | out-File "c:\Users\araceli\Desktop\contagiados.txt"
}

$form.Controls.Add($button)
$form.Controls.Add($button1)
$form.Controls.Add($button2)
$form.Controls.Add($button3)
$form.Controls.Add($button4)
$form.Controls.Add($button5)
$form.controls.add($pictureBox)
$Form.Controls.Add($Label)
$Form.ShowDialog()