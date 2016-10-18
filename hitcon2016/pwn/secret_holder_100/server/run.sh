socat -v tcp-l:1234,fork,reuseaddr exec:'./secretHolder'
