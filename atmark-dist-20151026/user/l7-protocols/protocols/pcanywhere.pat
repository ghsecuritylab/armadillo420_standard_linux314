# pcAnywhere - Symantec remote access program
# Pattern attributes: marginal veryfast
# Protocol groups: remote_access proprietary
# Wiki: http://www.protocolinfo.org/wiki/PcAnywhere

# This is completely untested!
# See http://www.unixwiz.net/tools/pcascan.txt

pcanywhere
# I think this only matches queries and not the bulk of the traffic!
^(nq|st)$
