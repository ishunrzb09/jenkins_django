import email

from django.shortcuts import HttpResponse, render

# Create your views here.


def index(request):
    return HttpResponse("purji url")
