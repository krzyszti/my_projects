'''
przyjmuje 2 stringi: "79-900" i "80-155" i zwraca listę kodów pomiędzy nimi
'''
def code(string_1, string_2):
    result = []
    input_values = [string_1.split('-'), string_2.split('-')]
    for i, value in enumerate(input_values):
        input_values[i]=[int(value[0]),int(value[1])]
    input_values[1][1]-=1
    while input_values[0]!=input_values[1]:
        if input_values[0][1]==999:
            input_values[0][1]=0
            input_values[0][0]+=1
        else:
            input_values[0][1]+=1
        tmp = ''
        if input_values[0][0]<10:
            tmp+='0'+str(input_values[0][0])
        else:
            tmp+=str(input_values[0][0])
        tmp+='-'
        if input_values[0][1]<10:
            tmp+='00'+str(input_values[0][1])
        elif input_values[0][1]<10:
            tmp+='0'+str(input_values[0][1])
        else:
            tmp+=str(input_values[0][1])
        result.append(tmp)
    return result
