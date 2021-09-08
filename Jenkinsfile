#!groovy

node {

    try {
        stage 'Checkout'
            checkout scm

        stage 'Stagging Deploy'
            sh 'chmod a+x deploy/staging.sh'
            sh 'deploy/staging.sh'

       

        
    }

    catch (err) {
        throw err
    }

}
