param ($partitaIVA, $cartella='.')
if ($null -eq $partitaIVA) {
	$partitaIVA = read-host -Prompt "Inserisci la partitaIVA (esempio IT00000000000)" 
}

if (!($partitaIVA -match '^IT([0-9]){11}$')) {
	write-host "Formato partitaIVA invalido. Deve essere, ad esempio IT00000000000"
	exit
} 

$fileList=@()
$count=0
$zindex=1

write-host "Cartella di lavoro $cartella"

Get-ChildItem "$cartella\*" -Include *.xml,*.p7m  -Exclude *_metaDato.xml | 
Foreach-Object {

	$fileList+= $_
	$count++
    write-host "File: $_"

	if ($count -eq 10) {
		$zindexStr = '{0:d5}' -f $zindex
		$compress = @{
			LiteralPath= $fileList
			CompressionLevel = "Fastest"
			DestinationPath = $partitaIVA + "_" +  $zindexStr +  ".zip"
			}
		Compress-Archive @compress

		write-host "Creazione zip file: $partitaIVA_$zindexStr.zip"

		$zindex++
		$count=0
		$fileList=@()
	}

}


if ($count -gt 0) {
	$zindexStr = '{0:d5}' -f $zindex
	$compress = @{
		LiteralPath= $fileList
		CompressionLevel = "Fastest"
		DestinationPath = $partitaIVA + "_" +  $zindexStr +  ".zip"
		}
	Compress-Archive @compress

	write-host "Creazione zip file: $partitaIVA_$zindexStr.zip"
}


