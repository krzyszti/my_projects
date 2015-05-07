from django.contrib.messages.views import SuccessMessageMixin
from django.core.urlresolvers import reverse_lazy
from django.views.generic import TemplateView, ListView, CreateView
from django.contrib.auth.forms import UserCreationForm
from player import models


class Register(SuccessMessageMixin, CreateView):
    template_name = 'registration/register.html'
    form_class = UserCreationForm
    success_url = reverse_lazy('login')
    success_message = "%(username)s created successfully!"

register = Register.as_view()


class Index(TemplateView):
    template_name = 'index.html'

index = Index.as_view()


class PlayerList(ListView):
    template_name = 'playerList.html'
    model = models.Player

playerList = PlayerList.as_view()