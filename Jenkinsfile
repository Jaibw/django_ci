#!groovy

node {

    try {
        stage 'Checkout'
            checkout scm

        stage 'Test'
            sh 'virtualenv env -p python3.6'
            sh '. env/bin/activate'
            sh 'env/bin/pip install -r requirements.txt'
            sh 'env/bin/python3.6 manage.py test'
        
        stage 'Stagging Deploy'
            sh 'chmod a+x deploy/staging.sh'
            sh 'deploy/staging.sh'

       

        
    }

    catch (err) {
        throw err
    }

}
