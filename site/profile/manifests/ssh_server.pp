class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCoA5dYBmdA7lM7nXfYNwVKAvixkzZox5k792fMQ2Oyk02Qi2VRgdViEti5tDruWiQb1taLWFXjtS7bVyQypaZHyHlQAzyiw06vvi9IrXI9zsf5rWDl4HKoIOk0h5qVCo5lcGdXGLcswKLanagh1vmuvQ7Q7swSVHwOl0FHfNlntaC6HPmeL2pxg/XpYTCqULFtF3uie/dzRWr5W/M/0DwrvYjG53utYgpeAJoXx/uEv4X5cvkQPVNI+rlEE9F7qB2lFBRPSRrxzdyKssI+CLuUL18GoK44/Zf6d8QAnuD1J0KUO2vVbMlwBmb4yyfENHBxIv9JNADkSdCciGuPdEn3',
	}  
}
