describe 'Ping-Computer' {
	it 'should  return $true when the computer is online' {
		mock  'Test-Connection' -MockWith { $true }
	Ping-Computer -ComputerName 127.0.0.1 | should be $true
	}

	it 'should  return $false when the computer is offline' {
		mock  'Test-Connection' -MockWith { $false }
		Ping-Computer -ComputerName 'DOESNOTMATTER' | should be $false
	}
}