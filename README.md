# docker-strider

Semi-official docker build that does NOT ship with internal Mongo or SSH.

It contains supervisord, latest strider, its dependent modules and nodejs/npm.

You must pass in a DB_URI with a valid mongodb connection string.

## config

    SERVER_NAME - Required; Address at which server will be accessible on the Internet. E.g. https://strider.example.com (note: no trailing slash)
    HOST - Host where strider listens, optional (defaults to 0.0.0.0).
    PORT - Port that strider runs on, optional (defaults to 3000).
    DB_URI - MongoDB DB URI if not localhost (you can safely use MongoLab free plan - works great)
    HTTP_PROXY - Proxy support, optional (defaults to null)
    If you want email notifications, configure an SMTP server (we recommend Mailgun for SMTP if you need a server - free account gives 200 emails / day):
    SMTP_HOST - SMTP server hostname e.g. smtp.example.com
    SMTP_PORT - SMTP server port e.g. 587 (default)
    SMTP_USER - SMTP auth username e.g. "myuser"
    SMTP_PASS - SMTP auth password e.g. "supersecret"
    SMTP_FROM - Default FROM address e.g. "Strider noreply@stridercd.com" (default)

    docker run -t \
	-e SERVER_NAME =
	-e 
	-e
	-e 
	-e
	-e



## Pulling

Hosted on Quay.io. Find what to `docker pull` by checking the TAG file

## Building

Clone the project and `docker build . -t <TAG>`

## Running

Say you've created a database at MongoLab, here's how you would run it:

`docker run -e "DB_URI=mongodb://keyvan:mypass@ds041380.mongolab.com:41380/strider-testing" <TAG>`

## Linking

A compatible mongo image is included. It's left up to the user to decide how to use it.

## Security

This image can generate an admin user with a random password. Set environment variable `GENERATE_ADMIN_USER` to use this feature.
