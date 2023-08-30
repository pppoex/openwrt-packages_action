import os
import sys
#枚举所有Makefile文件位置，存入变量
def get_makefile_path(root_path):
    makefile_path_list = []
    for root, dirs, files in os.walk(root_path):
        for file in files:
            if file == "Makefile":
                makefile_path_list.append(os.path.join(root, file))
    return makefile_path_list

print ("PATH=" + str(get_makefile_path("./package/")))

# 存入变量
Makefile_patch = []
Makefile_patch = get_makefile_path("./package/")

# 遍历所有Makefile文件,在文件位置执行 make [文件位置]/complie V=99
for i in Makefile_patch:
    # 去除文件名，只保留文件路径
    i = i.replace("\Makefile", "")
    i = i.replace("/Makefile", "")
    print(i)
    print("sh build.sh " + i)
    os.system("./build.sh " + i + " ./ipk/")

