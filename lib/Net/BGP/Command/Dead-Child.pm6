use v6;

#
# Copyright (C) 2018 Joelle Maslak
# All Rights Reserved - See License
#

use Net::BGP::Command;

class Net::BGP::Command::Dead-Child:ver<0.0.0>:auth<cpan:JMASLAK> is Net::BGP::Command {
    has Int $.connection-id;

    method message-type(-->Str) { 'Dead-Child' };
}

=begin pod

=head1 NAME

Net::BGP::Command::Dead-Child - BGP Dead-Child Server Command

=head1 SYNOPSIS

  use Net::BGP::Command::Dead-Child;

  my $msg = Net::BGP::Command::Dead-Child.new(:connection-id(1));

=head1 DESCRIPTION

A Dead-Child command.  This is meant to be used only internally (I.E. it should
not be sent from user code).

The server will erase the connection ID indicated from all connection tables.

=head1 METHODS

=head2 message-type

Contains the string C<Dead-Child>.

=head1 ATTRIBUTES

=head2 connection-id

The associated connection ID

=head1 AUTHOR

Joelle Maslak <jmaslak@antelope.net>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2018 Joelle Maslak

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod