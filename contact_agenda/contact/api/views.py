from django.shortcuts import get_object_or_404
from rest_framework import status, viewsets
from rest_framework.response import Response
from rest_framework.decorators import api_view

from contact.models import *
from contact.api.serializers import *
from contact.urls import *


'''api view to see all the data related to the User(User, UserAddress, UserRelation)'''
@api_view(['GET', 'POST'])
def api_contactserializer_detailview(request, contact_id):#for now im hardcoding contact_id 
    try:
        contact = Contact.objects.get(pk=contact_id)
        address = ContactAddress.objects.get(contact_id=contact_id)
    except Contact.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET' or 'POST':
        def serializer_returner():
            contact_address_serializer = ContactAdressSerializer(address)
            contact_serializer = ContactSerializer(contact)
            return contact_serializer.data, contact_address_serializer.data

        return Response(serializer_returner())




        

    
    