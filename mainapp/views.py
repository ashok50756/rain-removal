from django.shortcuts import render



def home(request):
    return render(request,'main/main-home.html')

def about(request):
    return render(request,'main/main-about.html')

def contact(request):
    return render(request,'main/main-contact.html')