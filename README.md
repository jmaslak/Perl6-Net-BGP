[![Build Status](https://travis-ci.org/jmaslak/Perl6-Net-BGP.svg?branch=master)](https://travis-ci.org/jmaslak/Perl6-Net-BGP)

NAME
====

Net::BGP - BGP Server Support

SYNOPSIS
========

    use Net::BGP

    my $bgp = Net::BGP.new( port => 179 );  # Create a server object

DESCRIPTION
===========

This provides framework to support the BGP protocol within a Perl6 application.

ATTRIBUTES
==========

port
----

The port attribute defaults to 179 (the IETF assigned port default), but can be set to any value between 0 and 65535. It can also be set to Nil, meaning that it will be an ephimeral port that will be set once the listener is started.

server-channel
--------------

Returns the channel communicate to command the BGP server process. This will not be defined until `listen()` is executed. It is intended that user code will send messages to the BGP server.

user-channel
------------

Returns the channel communicate for the BGP server process to communicate to user code.

METHODS
=======

listen
------

    $bgp.listen();

Starts BGP listener, on the port provided in the port attribute.

For a given instance of the BGP class, only one listener can be active at any point in time.

add-peer
--------

    $bgp.add-peer(:peer-ip("192.0.2.1"), :peer-port(179), :peer-asn(65001));

Add a new peer to the BGP server.

PATRONS
=======

Mythic Beasts, a managed and unmanaged VPS, dedicated server, web and email hosting company (among many other services) generously donated the use of a VPS host with IPv4 and IPv6 BGP feeds for the development of this module. Check them out at [https://www.mythic-beasts.com/](https://www.mythic-beasts.com/).

AUTHOR
======

Joelle Maslak <jmaslak@antelope.net>

COPYRIGHT AND LICENSE
=====================

Copyright © 2018 Joelle Maslak

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

