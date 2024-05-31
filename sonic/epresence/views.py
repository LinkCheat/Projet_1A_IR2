from django.shortcuts import render


def error_400(request, exception):
    return render(request, 'epresence/400.html', status=400)

def error_403(request, exception):
    return render(request, 'epresence/403.html', status=403)

def error_404(request, exception):
    return render(request, 'epresence/404.html', status=404)
    
def error_405(request, exception):
    return render(request, 'epresence/405.html', status=405)    

def error_500(request):
    return render(request, 'epresence/500.html', status=500)
