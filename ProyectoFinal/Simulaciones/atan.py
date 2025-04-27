import math as m

while(1):
    i=input("Enter I: ")
    q=input("Enter q: ")

    print("Atan(",q,"/",i,") = ", m.atan2(q,i))
    print("FXP Atan(",q,"/",i,") = ", round(m.atan2(q,i)*2**7))
