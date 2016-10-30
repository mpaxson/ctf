def makeMeDizzy(flag):
    cFlag = ''
    for c in flag:
        #print c
        cv = ord(c) << 13
        #print (str(cv))
        cv = cv >> 4
        #print (str(cv))
        cv = cv << 1
        #print (str(cv))
        cv = cv >> 2
        #print (str(cv))
        cv = cv << 4
        #print (str(cv))
        cv = cv >> 4
        #print (str(cv))
        cv = cv << 5
        #print (str(cv))
        cv = cv >> 13
        #print (str(cv))
        cv = cv << 10
        #print (str(cv))
        cv = cv >> 4
        #print (str(cv))
        cv = cv << 7
        #print (str(cv))
        cv = cv >> 12
        #print (str(cv))
        cv += 1
        #print (str(cv))
        cFlag += chr(cv)
        #print chr(cv)


    f = open('dizzy_flag','wb')
    f.write(cFlag)

if __name__ == '__main__':
    flag = open('dizzy_flag','r' ) # This is

    flagText = flag.readline()
    print flagText

    makeMeDizzy('dizzy_flag')
