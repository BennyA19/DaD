import uuid
from django.db import models

# Create your models here.
class Tag(models.Model):
    """Model representing a tag of the word."""
    name = models.CharField(max_length=200, help_text='Enter a tag (e.g. tutoring)')
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class Language(models.Model):
    """Model representing the language of the word."""
    name = models.CharField(max_length=200, help_text='Enter a language (e.g. de/de)')
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

class Active(models.Model):
    """Value representing activity."""
    name = models.CharField(max_length=200, help_text='Enter an option (e.g. active / not active)')
    
    def __str__(self):
        """String for representing the Model object."""
        return self.name

from django.urls import reverse # Used to generate URLs by reversing the URL patterns

class Word(models.Model):
    """Model representing a Word (but not a specific copy of the word)."""
    entry = models.CharField(max_length=200)                        #Is the ID since entrys are unique
    index = models.CharField(max_length=1) 
    tag = models.ManyToManyField(Tag, help_text='Select a tag for this word')
    language = models.ManyToManyField(Language, help_text='Select a language for the word')
    # leer = deutsch
    updated = models.DateTimeField(auto_now=True)
    activity = models.ForeignKey('active', on_delete=models.SET_NULL, null=True)
    default_ipa = models.ManyToManyField('ipa', null=True)

    Work_STATUS = (
        ('i', 'in Work'),
        ('n', 'new'),
        ('a', 'Available'),
        ('f', 'false'),
    )

    status = models.CharField(
        max_length=1,
        choices=Work_STATUS,
        blank=True,
        default='i',
        help_text='word status',
    )
    
    def display_tag(self):
        """Create a string for the tag. This is required to display tag in Admin."""
        return ', '.join(tag.name for tag in self.tag.all()[:3])
    display_tag.short_description = 'tag'

    def __str__(self):
        """String for representing the Model object."""
        return self.entry
    
    def get_absolute_url(self):
        """Returns the url to access a detail record for this word."""
        return reverse('word-detail', args=[str(self.id)])



class IPA(models.Model):

    """Model representing a specific ipa of a word (e.g that could be used for it)."""
    ipa = models.CharField(max_length=400)
    def_word = models.ForeignKey('word', on_delete=models.SET_NULL, null=True) 
    syllable = models.IntegerField()
    stress = models.CharField(max_length=40)
    sampa = models.CharField(max_length=400)
    activity = models.ForeignKey('active', on_delete=models.SET_NULL, null=True)
    audio = models.FileField(upload_to='catalog/Audio/', default='catalog/Audio/AudioMissing.mp3')                                    ##Saves the path of the audio file
 #  wordID = models.ForeignKey('word.id', on_delete=models.SET_NULL, null=True)
    def get_absolute_url(self):
        """Returns the url to access a detail record for this ipa."""
        return reverse('ipa-detail', args=[str(self.id)])

    class Meta:
        ordering = ['word']

    def __str__(self):
        """String for representing the Model object."""
        return f'{self.ipa} ({self.def_word.entry})'
