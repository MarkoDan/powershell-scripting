$username = "domain\username"
$password = ConvertTo-SecureString "password" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

New-PSDrive -Name X -PSProvider FileSystem -Root \\Server\Share -Credential $credential -Persist
