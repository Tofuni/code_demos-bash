This repo contains sample bash scripts from (https://fbacarisas.xyz/programming/code_demos/bash/)

All scripts were run in AmazonLinux2 EC2 instance
`uname -r` => `4.14.203-156.332.amzn2.x86_64`

# Bash Scripts
_____

## add_full_file_permissions.sh

Add Full File Permissions
add full access to a file for any combination of entities (user, group, other)

allow the user to pass a flag to add access based on user, group, or other using the respective options -u, -g, and -o

example usage:

`./add_full_file_permissions.sh -u -g example/path/myfile.txt`
(adds user and group access to example/path/myfile.txt)

_____

## check_for_security_updates_and_install.sh

Check for Security Updates and Install
query the latest security updates and prompt the user on whether to install them

example usage:

`./check_for_security_updates_and_install.sh`

_____

## copy_to_dir_if_exists.sh

Copy Source Folder to Destination Folder
copy a source folder to destination folder
allow the user to specify source and destination directories with -s and -d flags respectively

example usage:

`./copy_to_dir_if_exists.sh -s example/path/source -d example/path/destination`

_____

## curl_and_download_endpoint.sh

Download URL to File
curl an endpoint and output it to a file.
allow the user to specify the filename; if a filename is not specified, set it to a datestamp.

example usage:

`./curl_and_download_endpoint.sh https://fbacarisas.xyz/ index.html`

_____

## datestamp_files.sh

Datestamp Objects in Path
for all objects in a given path (files, directories, etc), add a datestamp prefix to the object name
(e.g. 19012021_myfile.txt, myfile.txt with the datestamp for 01/19/2021)

skip any files that already have the datestamp formatted prefix

if no path is specified, assume the current directory "."
note: this will also datestamp the script itself but a conditional that greps the script name (similar to how the solution greps the datestamp prefix) can skip renaming it if needed

example usage:

`./datestamp_files.sh server-logs`
(datestamp all the files/directories in the path "server-logs")

_____

## get_files_with_extension.sh

Get Files with Extension
Query the files with a specified file extension
allow the user to pass in the file extension and optionally pass in a path to search for the files; if no path is declared, assume the current directory

example usage:

`./get_files_with_extension.sh sh`
(get files ending in ".sh" in the current directory)

`./get_files_with_extension.sh txt ./test1`
(get files ending in ".txt" in the "./test1" directory)

_____

## get_ipv4_ipv6_of_host.sh

Get IPv4 and IPv6 Addresses of Host
return the ipv4 and ipv6 details of the host

example usage:

`./get_ipv4_ipv6_of_host.sh`

_____

## python_dev.sh

Python3 TestFile
utility for testing python; setup a directory and testfile and allow the user to pass in the following options

-d => delete the contents of the testfile
-e => edit the testfile
-r => read the contents of the testfile
-t => test the testfile
python3 is assumed to be installed and set in $PATH (i.e. "sudo yum install python3 ; python3 --version")

example usage:

`./python_dev.sh -e -t`
(edit the python testfile and then test it)

_____

## ruby_dev.sh

Ruby TestFile
utility for testing ruby; setup a directory and testfile and allow the user to pass in the following options

-d => delete the contents of the testfile
-e => edit the testfile
-r => read the contents of the testfile
-t => test the testfile


example usage:

`./ruby_dev.sh -d -e`
(delete the ruby testfile contents and then edit it)

_____

## ssh_to_host_from_an_array_of_hosts.sh

Select Host to SSH to
SSH to a host from an array of host options
specify the list of hosts in an array object in the script and allow the user to select the host to SSH to by its array index.

example usage:

`./ssh_to_host_from_an_array_of_hosts.sh`

(0) my-cloud-desktop.compute.amazonaws.com
(1) tofuni-dev.domain.com
(2) smtp-host.something.aws.com
(3) dhcp-server.example.server.com
(4) bastion-host.localserver.com

Select a host to ssh to: `2`
ssh to smtp-host.something.aws.com

_____

## update_PATH_variable.sh

Append paths to PATH
Allow a user to pass in paths and append them to $PATH

example usage:

`source ./update_PATH_variable.sh /example/path/one /example/path/two`