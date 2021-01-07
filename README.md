# *.tardypad.me

Personal websites

- pkgs: packages repository
- status: current work status
- www: general website

## Website repository structure

Nginx is used as a web server
(version [1.18.0](http://hg.nginx.org/nginx/rev/release-1.18.0)).  
The vhost configuration for each website is found in the `nginx` folder.

The `root` folder contain the files to be put in their respective
`/srv/{website}/` folder on the server.

Extra individual website details are explained in their own README.
