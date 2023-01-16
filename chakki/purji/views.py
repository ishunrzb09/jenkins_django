import email

from django.shortcuts import HttpResponse, render

# Create your views here.


def index(request):
    context = {
        "name":"Ghonga",
        "mobile":"123"
    }
    return render(request,"purji/index.html",context)
