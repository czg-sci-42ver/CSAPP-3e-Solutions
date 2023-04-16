def my_double(annotate_str,hex_num,bits,exp_size):
    ## https://stackoverflow.com/questions/1425493/convert-hex-to-binary
    ## use '0' fill and '>' align https://docs.python.org/3/library/string.html#grammar-token-format-spec-fill refered by https://peps.python.org/pep-0498/
    my_hexdata = f'{hex_num:0>{bits}b}'
    sign=int(my_hexdata[0],2)
    exp=int(my_hexdata[1:exp_size+1],2)
    frac=int(my_hexdata[exp_size+1:bits],2)/2**my_hexdata[exp_size+1:bits].__len__()
    double_num = (-1)**(sign)*(1+frac)*2**(exp-(2**(exp_size-1)-1))
    print(annotate_str,double_num)
    # exp_bin=bin(int(my_hexdata[1:11],2))
    # frac_bin=bin(int(my_hexdata[exp_size+1:63],2))
    # print(sign,exp_bin,frac,int(frac_bin,2),int(frac_bin,2)-1023)

    # print(type(bin(int(my_hexdata, scale))[0:2]),bin(int(my_hexdata, scale))[2:].zfill(num_of_bits))
    # binary_string=
my_double("float->double in gcc",0x4003be76c0000000,64,11)
my_double("half-precision",0xbe76,16,5)
my_double("bfloat16",0xbe76,16,8)