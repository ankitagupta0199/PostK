from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.conf import settings
from django.core.files.storage import FileSystemStorage

from . import models
from myapp import models as m

curl=settings.CURRENT_URL

#middleware to check session for admin routes
def sessioncheck_middleware(get_response):
	def middleware(request):
		if request.path=='/myadmin/' or request.path=='/myadmin/manageusers/' or request.path=='/myadmin/addcat/':
			if request.session['sunm']==None or request.session['srole']!="admin":
				response = redirect(curl+'login/')
			else:
				response = get_response(request)
		else:
			response = get_response(request)		
		return response	
	return middleware


# Create your views here.


def adminhome(request):
	return render(request,"adminhome.html",{'curl':curl,'sunm':request.session['sunm'],'srole':request.session['srole']})
	
def addcat(request):
	if request.method=="GET":
		return render(request,"addcat.html",{'curl':curl,'output':'','sunm':request.session['sunm'],'srole':request.session['srole']})	
	else:
		catnm=request.POST.get('catnm')
		caticon=request.FILES['caticon']
		fs = FileSystemStorage()
		filename = fs.save(caticon.name,caticon)
		p=models.Addcat(catnm=catnm,caticon=filename)
		p.save()
		return render(request,"addcat.html",{'curl':curl,'output':'Category added successfully','sunm':request.session['sunm'],'srole':request.session['srole']})
		
def addsubcat(request):
	clist=models.Addcat.objects.filter()
	if request.method=="GET":
		return render(request,"addsubcat.html",{'curl':curl,'output':'','clist':clist})	
	else:
		catnm=request.POST.get('catnm')
		subcatnm=request.POST.get('subcatnm')
		subcaticon=request.FILES['subcaticon']
		fs = FileSystemStorage()
		filename = fs.save(subcaticon.name,subcaticon)
		p=models.Addsubcat(subcatnm=subcatnm,catnm=catnm,subcaticon=filename)
		p.save()
		return render(request,"addsubcat.html",{'curl':curl,'output':'Sub Category added successfully','clist':clist})		
	

def manageusers(request):
	userlist=m.Register.objects.filter(role='user')
	return render(request,"manageusers.html",{'curl':curl,'userlist':userlist})
	
def manageuserstatus(request):
	regid=request.GET.get('regid')
	vstatus=request.GET.get('vstatus')
	if vstatus=='block':
		m.Register.objects.filter(regid=regid).update(status=0)
	elif vstatus=='unblock':
		m.Register.objects.filter(regid=regid).update(status=1)	         
	else:
		m.Register.objects.filter(regid=regid).delete()
	return redirect(curl+'myadmin/manageusers')	















