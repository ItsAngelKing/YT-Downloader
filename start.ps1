#YT To MP3
#Creado por Its_Angel_07

#Se declara la función MP3
function mp3 {
	#MP3
	clear
	#Se obtienen los enlaces del archivo $archivomp3 y se declaran en una variable $mp3
	$archivomp3="./input_mp3.txt"
	$mp3=Get-Content $archivomp3
	
	#Ruta donde se van a descargar
	$rutaoutputmp3="./output/mp3/"
	
	#Bucle para hacer que todas las urls del archivo $archivomp3 se procesen por el YT-DLP
	for($a=0; $a -lt $mp3.count; $a++) {
		
		#Iniciar ytdlp en el directorio /bin con el array del archivo $archivomp3 en $mp3, y despues guardar los .mp3 en la carpeta $rutaoutput
		./bin/yt-dlp.exe --ffmpeg-location ./bin/ffmpeg/bin/ -P $rutaoutputmp3 -x --audio-format mp3 $mp3[$a]
	}
	Write-Host "Operación Finalizada..."
	Write-Host "Redirigiendo al menú..."
	pause
	clear
	#Se redirige al menú
	menu
}

#Se declara la función MP4
function mp4 {
	#MP4
	clear
	#Se obtienen los enlaces del archivo $archivomp4 y se declaran en una variable $mp4
	$archivomp4="./input_mp4.txt"
	$mp4=Get-Content $archivomp4
	
	#Ruta donde se van a descargar
	$rutaoutputmp4="./output/mp4/"
	
	#Bucle para hacer que todas las urls del archivo $archivomp4 se procesen por el YT-DLP
	for($a=0; $a -lt $mp4.count; $a++) {
		
		#Iniciar ytdlp en el directorio /bin con el array del archivo $archivomp4 en $mp4, y despues guardar los .mp4 en la carpeta $rutaoutput
		./bin/yt-dlp.exe --ffmpeg-location ./bin/ffmpeg/bin/ -P $rutaoutputmp4 $mp4[$a]
	}
	Write-Host "Operación Finalizada..."
	Write-Host "Redirigiendo al menú..."
	pause
	clear
	#Se redirige al menú
	menu
}

#Se declara la función MENÚ
function menu {
	#Menú
	#Mostrar menú
	Write-Host "                          "
	Write-Host "__________________________"
	Write-Host "|          MENÚ          |"
	Write-Host "|                        |"
	Write-Host "| (1)-----------YT a MP3 |"
	Write-Host "| (2)-----YT a MP4(BETA) |"
	Write-Host "| (3)-------------SALIR  |"
	Write-Host "|                        |"
	Write-Host "|    Powered by YTDLP    |"
	Write-Host "|                        |"
	Write-Host "|      Its_Angel_07      |"
	Write-Host "|________________________|"
	Write-Host "                          "
	
	#Elejir opción
	$menu=Read-Host "Elige un número(1-3)"
	
	#Hacer funcional el menú
	switch ($menu) 
	{
		1 {
			#Ejecutar la función MP3
			Write-Host "Descargando archivos en MP3"
			pause
			mp3
		} 
		2 {
			#Ejecutar la función MP4
			Write-Host "Descargando archivos en MP4"
			pause
			mp4
		}
		3 {
			#Salir del programa
			Write-Host "SALIENDO DE YT-DONWLOADER SCRIPT..."
			clear
			exit
		}
	}
}

#Se inicia la función menú
menu