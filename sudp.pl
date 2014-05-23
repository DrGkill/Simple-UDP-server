#!/usr/bin/perl

##########################################################################
#
# Script name : Git Deployer Server
# Author : Guillaume Seigneuret
# Date : 23/05/14
# Last update : See Git log
# Type : Deamon
# Version : 1.0
# Description : UDP packets and anwer ok when received.
# I wrote that script for network testing purposes
#
# Usage : ./sudp.pl
#
## Copyright (C) 2014 Guillaume Seigneuret (Omega Cube)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>
############################################################################

use IO::Socket::INET;

# flush after every write
$| = 1;

my ($socket,$client_socket);
my ($peeraddress,$peerport);

$socket = new IO::Socket::INET (
        LocalHost => '0.0.0.0',
        LocalPort => '5000',
        Proto => 'udp',
) or die "ERROR in Socket Creation : $!\n";

while($socket->recv($recieved_data,1024))
{
        $socket->send("CONFIRMED: Ok. ");
}
