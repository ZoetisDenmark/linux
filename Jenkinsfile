pipeline
{
    agent
    {
        dockerfile true
    }
    stages
    {
        stage('Build Linux')
        {
          steps
          {
            sh '''
               make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- zoetis_defconfig
               make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- zImage modules dtbs
               make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- tarxz-pkg
               '''
            sh '''
               make ARCH=arm CROSS_COMPILE=/usr/bin/arm-linux-gnueabihf- heska_defconfig
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
        archiveArtifacts artifacts: "*-arm.tar.xz"
      }
    }
}
