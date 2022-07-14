from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view

from contact.models import *
from contact.api.serializers import *
from contact.urls import *



@api_view(['GET', 'POST'])
def api_contactserializer_detailview(request, contact_id):#for now im hardcoding contact_id 
    try:
        contact = Contact.objects.get(pk=contact_id)
        address = ContactAddress.objects.get(contact_id=contact_id)
    except Contact.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET' or 'POST':
        data = ContactSerializer(contact)
        serializer2 = ContactAdressSerializer(address)
        return Response(data.data)