from django.shortcuts import render

# Create your views here.

from catalog.models import Tag, Language, Active, Word, IPA

def index(request):
    """View function for home page of site."""

    # Generate counts of some of the main objects
    num_words = Word.objects.all().count()
    num_ipas = IPA.objects.all().count()
    
    # Available words (status = 'a')
    num_words_available = Word.objects.filter(status__exact='a').count()
    
    # The 'all()' is implied by default.    
    num_tag = Tag.objects.count()
    
    context = {
        'num_words': num_words,
        'num_ipas': num_ipas,
        'num_words_available': num_words_available,
        'num_tag': num_tag,
    }

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)


from django.views import generic

class WordListView(generic.ListView):
    model = Word

class WordDetailView(generic.DetailView):
    model = Word

class IpaListView(generic.ListView):
    model = IPA

class IpaDetailView(generic.DetailView):
    model = IPA
