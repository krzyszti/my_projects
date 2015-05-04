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

class ChoiceBandForm(forms.Form):
    choices = []
    for band in models.Band.objects.all():
        choices.append([band.pk, band])

    choice = forms.ChoiceField(choices)