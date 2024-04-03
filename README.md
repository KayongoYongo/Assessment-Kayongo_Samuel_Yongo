# CEMA-Assessment-Kayongo_Samuel_Yongo
A repository for my CEMA internship assessment

The project has been built using Kotlin for the frontend and Flask API for the backend.

## Getting started
To get started, run this command on the terminal `python -m api.v1.app1`. The provided command will
start the flask API.

## Add databases
Next, add the sample database Tables by running `python createDatabase.py`

## Import sql dump
Next, add a database dump to use the data. To import it,
use the command `mysql -u username -p database_name < dump_file.sql`

To use the app, run android studio.

# Samples of the app
A sample of the orders page:
![image](https://github.com/KayongoYongo/CEMA-Assessment-Kayongo_Samuel_Yongo/assets/111020589/6e140389-9345-4c1f-9288-67b9259f0de6)

After the customer makes an order, we can view the request by testing it using POSTMAN:
![image](https://github.com/KayongoYongo/CEMA-Assessment-Kayongo_Samuel_Yongo/assets/111020589/e4ecb7c1-eb05-4538-b2e4-43636d7ec9b2)