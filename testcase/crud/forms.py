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

class ChoiceBandForm(forms.ModelForm):
    class Meta:
        model = models.Band
        fields = ("name",)
        
    def __init__(self, *args, **kwargs):
        super(ChoiceBandForm, self).__init__(*args, **kwargs)
        self.fields["name"] = forms.ModelChoiceField(queryset=models.Band.objects.all())