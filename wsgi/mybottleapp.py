from bottle import route, default_app, get, post, put, run, template, error, request, static_file, response
import requests
import json


@route('/')
def pincipal():
	return template("index.tpl")


@route('/buscar',method='post')
def buscar():
	ciudad1=request.forms.get('desde')		
	ciudad2=request.forms.get('a')
	fecha1=request.forms.get('salida')
	fecha2=request.forms.get('regreso')

	url="http://partners.api.skyscanner.net/apiservices/pricing/v1.0"
	payload={"apikey":"ju921377284697432379147330238387","country":"ES","currency":"EUR","locale":"es-ES","locationschema":"GeoNameCode","originplace":ciudad1,"destinationplace":ciudad2,"outbounddate":fecha1,"inbounddate":fecha2,"adults":"1"}
 	header={"Content-Type":"application/x-www-form-urlencoded","Accept":"application/json"}
 	r=requests.post(url,data=payload,headers=header)

 	if r.status_code==201:
 		r1=requests.get(r.headers["location"]+'?apikey='+payload["apikey"])	
 		if r1.status_code==200:
 			doc = json.loads(r1.text)
 			origen=doc["Query"]["OriginPlace"]
 			destino=doc["Query"]["DestinationPlace"]
  			salida=doc["Query"]["OutboundDate"]
 			llegada=doc["Query"]["InboundDate"]
 			sesion=doc["SessionKey"]
			return template("buscar.tpl",origen=origen,destino=destino,salida=salida,llegada=llegada,sesion=sesion)



@route('/info/<sesion>')
def info(sesion):
	payload2={"apikey":"ju921377284697432379147330238387"}
	url="http://partners.api.skyscanner.net/apiservices/pricing/v1.0/"+sesion+'?apikey='+payload2["apikey"]
 	r3=requests.get(url)	
 	if r3.status_code==200:
 		doc2 = json.loads(r3.text)
 		duracion=[]
 		precio=[]
 		compra=[]
 		for viaje in doc2["Itineraries"]:
 			for datos in viaje["PricingOptions"]:
 				
 				duracion.append(datos["QuoteAgeInMinutes"])
 				precio.append(datos["Price"])
 				compra.append(datos["DeeplinkUrl"])
 		
		return template("info.tpl",duracion=duracion,precio=precio,compra=compra)

@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='static')

# This must be added in order to do correct path lookups for the views
import os
from bottle import TEMPLATE_PATH
TEMPLATE_PATH.append(os.path.join(os.environ['OPENSHIFT_REPO_DIR'], 'wsgi/views/')) 

application=default_app()
