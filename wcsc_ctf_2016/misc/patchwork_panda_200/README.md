
We were given a binary that had checks in place (cmp statements) that checked to see if something was true, and if it was continue with execution. All we had to do was change the byte for the op code. 
For example, jnz byte patching would show `75 x ` where x is some number. If we changed the x to 0, the jnz will just seamlessly follow through. You could also just nop (90) it as well. 


![ida patching](https://github.com/mpaxson/ctf/blob/master/wcsc_ctf_2016/misc/patchwork_panda_200/IdaPatching.png?raw=true)

In IDA, click on the jnz statement, then go to edit -> Patch program -> Change byte

---

![Damn](https://raw.githubusercontent.com/mpaxson/ctf/master/wcsc_ctf_2016/misc/patchwork_panda_200/solving.png)

After patching the binary so the application wouldn't jump past the function call we wanted, the next thing was to decipher the nonascii text. This was harder than one would think to get it just what the ctf wanted. The only annoying part of this entire competition was deciphering what it wanted. You can see in the image that I even copy and pasted the output text to a website to see the text in a different font.




#Notes

If this would have been done in [Binary Ninja](https://binary.ninja/), this could have been done much faster since its alot faster to patch binaries in this application
