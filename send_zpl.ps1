# Define the printer's IP address and port
$printerIP = "redacted"
$printerPort = 6101

# Define the directory containing ZPL files
$zplDirectory = "C:\Fastpack\Labels"

# Get all ZPL files in the directory
$zplFiles = Get-ChildItem -Path $zplDirectory -Filter *.zpl

# Loop through each ZPL file
foreach ($zplFile in $zplFiles) {
    # Read the content of the ZPL file
    $zplContent = Get-Content -Raw -Path $zplFile.FullName

    # Establish a TCP connection to the printer
    $tcpClient = New-Object System.Net.Sockets.TcpClient($printerIP, $printerPort)
    $stream = $tcpClient.GetStream()
    $writer = New-Object System.IO.StreamWriter($stream)
    $writer.AutoFlush = $true

    # Send the ZPL content to the printer
    $writer.Write($zplContent)

    # Clean up
    $writer.Close()
    $stream.Close()
    $tcpClient.Close()
}
