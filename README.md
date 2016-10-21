# KIBANA IBM Research Middleware Logs

This is a Docker with Kibana code ready to run and deploy.

The docker has an script call:

> start-kibana.sh

that run Kibana with a remote Elastic Search configuration.

To configure the Elastic Search Database you can set the next environment variables:

- URL_ELASTIC_SEARCH: The url to Elastic Search (like Compose Instance or similar)
- USERNAME_ELASTIC_SEARCH: The username to access to Elastic Search
- PASSWORD_ELASTIC_SEARCH: The password to the username to access to Elastic Search

You must customize the *Dockerfile* to set the URL to your copy of this project repository:

> RUN git clone YOUR_URL_TO_REPOSITORY_FORKED /root/kibana

Every time Docker is restarted, a git pull of the repository will be run, to update the source code to the last version of your repository.
