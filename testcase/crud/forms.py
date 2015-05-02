from django import forms
from crud import models

class CreateBandForm(forms.ModelForm):
    class Meta:
        model = models.Band
        fields = ("name", "city", "country", "website")
        label = {
            "name": "Name",
            "city": "City",
            "country": "Country",
            "website": "Website"
        }