# *.tardypad.me

Personal websites

- files: files sharing
- pkgs: packages repository
- status: current work status
- www: general website

We list here info common to all websites, extra details are explained in each website README.

## Web server

Nginx is used as a web server
(version [1.18.0](http://hg.nginx.org/nginx/rev/release-1.18.0)).  

The main config is found in the `nginx` folder.

## Sites repository structure

The `root` folder contain the files to be put in their respective
`/srv/{website}/` folder on the server.

## Setup

Dependencies:
- `rsync` (currently using version [3.2.3](https://git.samba.org/?p=rsync.git;a=tag;h=refs/tags/v3.2.3))

```shell
# Deploy files to server
# Warning: Nginx config not included
make deploy
```
