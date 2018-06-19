pipeline
{
    agent {
        dockerfile true
    }
    stages
    {
        stage('Build Linux')
        {
            steps
            {
                fileOperations([fileDeleteOperation(excludes: '', includes: '*Zoetis-arm.tar')])
                git branch: 'zoetis-4.14.y',
                credentialsId: '1a8b25a5-9227-46d2-9fbe-1ea3811c1f20',
                url: 'git@github.com:ZoetisDenmark/linux.git'

                sh '''
                   make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- zoetis_defconfig
                   make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- zImage modules dtbs
                   make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- tarxz-pkg
                   '''
            }
        }
    }
    post
    {
      success
      {
        archiveArtifacts artifacts: "*Zoetis-arm.tar.xz"
      }
    }
}
