# DIG command cheatsheet

The goal of this cheat sheet is to provide you with a how dig command should be executed for various scenarios you may come across.

## Command Description
dig command allows you to send dns queries. It is part of bindutils package on linux.

see man or info pages for details

## Usage
Basic dig command for any record:

    $ dig google.com

Specify Host record (A record) only to query:

    $ dig google.com A

Query for All record type:

    $ dig google.com ANY

Query a specific dns server:

    $ dig google.com ANY @8.8.8.8
