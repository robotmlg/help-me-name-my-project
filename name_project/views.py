from django.shortcuts import render
from .data import get_name

def index(request):
    context = {"name": get_name()}
    return render(request, "index.html", context)
