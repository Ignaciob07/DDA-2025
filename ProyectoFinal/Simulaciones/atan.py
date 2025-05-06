import math as m

while(1):
    i=int(input("Enter I: "))
    q=int(input("Enter q: "))

    print("Atan(",q,"/",i,") = ", m.atan2(q,i))
    print("FXP Atan(",q,"/",i,") = ", round(m.atan2(q,i)*2**7))
    print("POS Atan(",q,"/",i,") = ", m.atan2(abs(q),abs(i)))
    print("FXP POS Atan(",q,"/",i,") = ", round(m.atan2(abs(q),abs(i))*2**7))
