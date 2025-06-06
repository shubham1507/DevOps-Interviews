#python code

dict1={'name':'abc', 'email':'abc@xyz.com'}
dict2=dict1
del dict2['email']
print dict1

#python code
class A:
    def test(self):
        print('A')

class B:
    def test(self):
        print('B')

class C(A, B):  # C inherits from A and B
    pass

obj = C()
obj.test()

print(C.__mro__)

(<class '__main__.C'>, <class '__main__.A'>, <class '__main__.B'>, <class 'object'>)

# how to create APIS in python diff between patch and put ? can we implement patch using put and vice versa ? if we can than why ceated 2 methods
# what is the use of Load Balancer
# what are routines and channels in go
