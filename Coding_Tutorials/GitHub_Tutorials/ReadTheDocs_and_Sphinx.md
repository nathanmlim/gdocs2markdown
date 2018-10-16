[<span class="underline">Readthedocs.org</span>](https://readthedocs.org/) is a website that can be used to host documentation for python (and other languate) software packages. It uses a python package called [<span class="underline">sphinx</span>](https://pypi.org/project/Sphinx/) to automatically build in examples and documentation from your python package.

## What is included here

In this file, I will walk you through a minimum example of how to set up a documentation website that is formatted based on one theme ([<span class="underline">chemper</span>](http://chemper.readthedocs.io/en/latest/)). The read the docs website has extensive documentation and there are A TON of different themes out there. This is intended to help you understand how to get started.

## Disclaimer

Below is a step by step guide, however, there is a STEEP learning curve on Read the Docs and its not particularly intuitive. In this tutorial, we assume you already have a working python package that is installable (see docs on setup files). This is intended to be a guide that shorter and easier to follow than the official Getting Started Guide, but you will likely need to look at outside resources.

## RST files

Read the docs uses rst (reStructuredText) files. These are similar to MarkDown files (such as those used for GitHub README files and jupyter notebooks), in that they have formatting rules that are interpretted to change the format of the text. However, the formatting is significantly different from MarkDown. This file will not include instruction for this format, but might highlight some examples. Below is a list of links our group (Caitlin) has found useful for how to format these files.

- [<span class="underline">http://openalea.gforge.inria.fr/doc/openalea/doc/\_build/html/source/sphinx/rest\_syntax.html</span>](http://openalea.gforge.inria.fr/doc/openalea/doc/_build/html/source/sphinx/rest_syntax.html)

- [<span class="underline">http://docutils.sourceforge.net/docs/user/rst/quickref.html</span>](http://docutils.sourceforge.net/docs/user/rst/quickref.html)

- [<span class="underline">https://thomas-cokelaer.info/tutorials/sphinx/rest\_syntax.html</span>](https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html)

- [<span class="underline">https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst</span>](https://github.com/ralsina/rst-cheatsheet/blob/master/rst-cheatsheet.rst)

- 

As with all languages it is usually fastest to just google what you want to do and follow the relevant discussion board answers

# Building Doc Files Locally

We will start on your computer, get some initial files set up before linking the website to your github repository.

## Download Sphinx and run quickstart

- <span class="underline">Install Sphinx</span>

|                                                                 |
|-----------------------------------------------------------------|
| pip install sphinx sphinx-autobuild sphinx\_rtd\_theme nbsphinx |

- <span class="underline">Make a docs directory</span> to store files

- From inside the docs folder <span class="underline">call sphinx-quickstart</span>. Note that there are a ton of questions with this call, most of them we use the default, but I will put the full list below **bolding** the ones where I did not chose the default.

  - A side note, the last question is “Create Windows command file? (y/n) \[y\]: n” I was taught at MolSSI to say “n” to this and I don’t know anyone on a windows computer to have used this program. You may need these files if you’re going to check your build on a windows machine, I don’t know.

  - When done with this call you’ll have a source/ and build/ directory in the docs directory, DO NOT add the build/ directory to your github, it is only there so you can see your output locally.

<table><tbody><tr class="odd"><td><p>(chemper_both) gitHub/shapes2 (docs)$ sphinx-quickstart</p><p>Welcome to the Sphinx 1.7.6 quickstart utility.</p><p>Please enter values for the following settings (just press Enter to</p><p>accept a default value, if one is given in brackets).</p><p>Selected root path: .</p><p>You have two options for placing the build directory for Sphinx output.</p><p>Either, you use a directory &quot;_build&quot; within the root path, or you separate</p><p>&quot;source&quot; and &quot;build&quot; directories within the root path.</p><p><strong>&gt; Separate source and build directories (y/n) [n]: y</strong></p><p>Inside the root directory, two more directories will be created; &quot;_templates&quot;</p><p>for custom HTML templates and &quot;_static&quot; for custom stylesheets and other static</p><p>files. You can enter another prefix (such as &quot;.&quot;) to replace the underscore.</p><p>&gt; Name prefix for templates and static dir [_]:</p><p>The project name will occur in several places in the built documentation.</p><p><strong>&gt; Project name: shapes</strong></p><p><strong>&gt; Author name(s): Caitlin C. Bannan</strong></p><p><strong>&gt; Project release []: 0.1</strong></p><p>If the documents are to be written in a language other than English,</p><p>you can select a language here by its language code. Sphinx will then</p><p>translate text that it generates into that language.</p><p>For a list of supported codes, see</p><p>http://sphinx-doc.org/config.html#confval-language.</p><p>&gt; Project language [en]:</p><p>The file name suffix for source files. Commonly, this is either &quot;.txt&quot;</p><p>or &quot;.rst&quot;. Only files with this suffix are considered documents.</p><p>&gt; Source file suffix [.rst]:</p><p>One document is special in that it is considered the top node of the</p><p>&quot;contents tree&quot;, that is, it is the root of the hierarchical structure</p><p>of the documents. Normally, this is &quot;index&quot;, but if your &quot;index&quot;</p><p>document is a custom template, you can also set this to another filename.</p><p>&gt; Name of your master document (without suffix) [index]:</p><p>Sphinx can also add configuration for epub output:</p><p>&gt; Do you want to use the epub builder (y/n) [n]:</p><p>Indicate which of the following Sphinx extensions should be enabled:</p><p><strong>&gt; autodoc: automatically insert docstrings from modules (y/n) [n]: y</strong></p><p>&gt; doctest: automatically test code snippets in doctest blocks (y/n) [n]:</p><p>&gt; intersphinx: link between Sphinx documentation of different projects (y/n) [n]:</p><p>&gt; todo: write &quot;todo&quot; entries that can be shown or hidden on build (y/n) [n]:</p><p>&gt; coverage: checks for documentation coverage (y/n) [n]:</p><p>&gt; imgmath: include math, rendered as PNG or SVG images (y/n) [n]:</p><p><strong>&gt; mathjax: include math, rendered in the browser by MathJax (y/n) [n]: y</strong></p><p>&gt; ifconfig: conditional inclusion of content based on config values (y/n) [n]:</p><p><strong>&gt; viewcode: include links to the source code of documented Python objects (y/n) [n]: y</strong></p><p>&gt; githubpages: create .nojekyll file to publish the document on GitHub pages (y/n) [n]:</p><p>A Makefile and a Windows command file can be generated for you so that you</p><p>only have to run e.g. make html instead of invoking sphinx-build</p><p>directly.</p><p>&gt; Create Makefile? (y/n) [y]:</p><p><strong>&gt; Create Windows command file? (y/n) [y]: n</strong></p><p>Creating file ./source/conf.py.</p><p>Creating file ./source/index.rst.</p><p>Creating file ./Makefile.</p><p>Finished: An initial directory structure has been created.</p><p>You should now populate your master file ./source/index.rst and create other documentation</p><p>source files. Use the Makefile to build the docs, like so:</p><p>make builder</p><p>where &quot;builder&quot; is one of the supported builders, e.g. html, latex or linkcheck.</p></td></tr></tbody></table>

## Edit Source Files

In this section, I will give instructions for how to make a minimum set of rst files so you can see how it works. If you want to look at source code for other websites, I recommend the following projects, which all have links at the top for “Edit on GitHub” that let you see the rst file source.

- Chemper: [<span class="underline">http://chemper.readthedocs.io/en/latest/</span>](http://chemper.readthedocs.io/en/latest/)

- Openforcefield: [<span class="underline">http://open-forcefield-toolkit.readthedocs.io/en/latest/installation.html</span>](http://open-forcefield-toolkit.readthedocs.io/en/latest/installation.html)

  - The link for these source files says “Source” in the menu bar at the top

- 50 Examples for Teaching Python: [<span class="underline">http://fiftyexamples.readthedocs.io/en/latest/index.html</span>](http://fiftyexamples.readthedocs.io/en/latest/index.html)

In the rest of this section I will tell you where these files should be and what to put in them to get this example working.

### index.rst

This file by default is in the source file, however, if your build is going to see all your code you should move it up to your top directory file. Initially your file should look something like this:

<table><tbody><tr class="odd"><td><p>.. shapes2 documentation master file, created by</p><p>sphinx-quickstart on Fri Jul 20 17:51:08 2018.</p><p>You can adapt this file completely to your liking, but it should at least</p><p>contain the root `toctree` directive.</p><p>Welcome to shapes2's documentation!</p><p>===================================</p><p>.. toctree::</p><p>:maxdepth: 2</p><p>:caption: Contents:</p><p>Indices and tables</p><p>==================</p><p>* :ref:`genindex`</p><p>* :ref:`modindex`</p><p>* :ref:`search`</p></td></tr></tbody></table>

We are going to make 3 more rst files, you should put their names in the table of contents tree (toctree) by putting their names under the caption, indented like this:

<table><tbody><tr class="odd"><td><p>.. toctree::</p><p>:maxdepth: 2</p><p>:caption: Contents:</p><p>docs/source/intro</p><p>docs/source/functions</p><p>docs/source/examples</p></td></tr></tbody></table>

### intro.rst

In docs/source make a file called **intro.rst**, mine has this:

<table><tbody><tr class="odd"><td><p>Introduction</p><p>============</p><p>Write an introduction here</p><p>Contributors</p><p>------------</p><p>* `Caitlin C. Bannan (UCI) &lt;https://github.com/bannanc&gt;`_</p></td></tr></tbody></table>

Here’s some new formatting:

- ==== under a line make a Title

- ----- under makes a subtitle

- The \` \` with &lt;&gt; around a link followed by \_ will put in an extral link so that line will look like:

  - [<span class="underline">Caitlin C. Bannan (UCI)</span>](https://github.com/bannanc)

### function.rst

This file will use Sphinx’s auto fill to fill in a custom function or class. Mine looks like this:

<table><tbody><tr class="odd"><td><p>Functions</p><p>=========</p><p>Functions are separated by shape and calculation. To see an example of them in action checkout :ref:`examples`</p><p>Square</p><p>------</p><p>.. autofunction:: shapes.square.area.area_square</p><p>.. autofunction:: shapes.square.perimeter.perimeter_square</p><p>Triangle</p><p>--------</p><p>.. autofunction:: shapes.triangle.area.area_triangle</p></td></tr></tbody></table>

In this implementation it assumes you’re using the Google stype doc strings, such as the one shown below. If you want to use a different doc style you will have to look up how to change your conf.py file.:

<table><tbody><tr class="odd"><td><p>def area_square(length):</p><p>&quot;&quot;&quot;</p><p>Calculates the area of a square.</p><p>Parameters</p><p>----------</p><p>length (float or int) length of one side of a square</p><p>Returns</p><p>-------</p><p>area (float) - area of the square</p><p>&quot;&quot;&quot;</p><p>return length ** 2</p></td></tr></tbody></table>

This will automatically grab the functions shapes.square… etc. You can also do this with classes, and it will show all classes and their doc strings. Here is the area\_square output on our website:

<img src="media/image8.png" style="width:3.65104in;height:2.26957in" />

### examples.rst

This file will allow you to show example jupyter notebooks you’ve created on your documentation website. This handy as your user can see a complicated use example that they can also download and play with from github if they want to.

<table><tbody><tr class="odd"><td><p>.. _examples:</p><p>Examples</p><p>========</p><p>Below are links to examples for inputing jupyter notebooks into your website</p><p>.. toctree::</p><p>:maxdepth: 1</p><p>../examples/example_notebook.ipynb</p></td></tr></tbody></table>

You can list multiple notebooks, just like the toctree in intro.rst, you can also include these in any toctree in any file you choose.

## Edit Configuration Files

Now we will change the files which are used to build your website pages

### Makefile

This file is located in the docs folder, not in source. We moved the index file up to the top directory so sphinx could find all your code and jupyter notebooks. However, we need to tell the Makefile that. Note, I don’t know anything else about this file, it is possible there are fancier things you can do witht he Makefile, but I’ve always just used the default besides this one change, on line 8 ish, change the SOURCEDIR variable:

|                 |
|-----------------|
| SOURCEDIR = ../ |

### conf.py

These are suggested changes for the conf file, it was originally at sources/conf.py, but it also needs to be moved to the top directory.

Remember, that these are all just suggestions to make the format used in chemper, this file is very customizeable so you may end up needing to change other things. I also don’t understand this well enough to justify all of these decisions.

So All I’m going to show what to change:

- uncomment out import os

  - approx line 15

- update the extensions list to include all of the following:

  - about line 41

<table><tbody><tr class="odd"><td><p>extensions = [</p><p>'sphinx.ext.autodoc',</p><p>'sphinx.ext.autosummary',</p><p>'sphinx.ext.mathjax',</p><p>'sphinx.ext.viewcode',</p><p>'sphinx.ext.napoleon',</p><p>'sphinx.ext.intersphinx'</p><p>'nbsphinx',</p><p>]</p></td></tr></tbody></table>

- Set the exclude\_patterns as below:

  - about line 73

|                                                              |
|--------------------------------------------------------------|
| exclude\_patterns = \['\_build', '\*\*.ipynb\_checkpoints'\] |

- Comment out the line html\_theme = 'alabaster' and add this below it:

  - about line 83

<table><tbody><tr class="odd"><td><p><em># html_theme = 'alabaster'</em></p><p>on_rtd = os.environ.get('READTHEDOCS', None) == 'True'</p><p>if not on_rtd: <em># only import and set the theme if we're building docs locally</em></p><p>import sphinx_rtd_theme</p><p>html_theme = 'sphinx_rtd_theme'</p><p>html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]</p><p>html_context = {</p><p>'css_files': [</p><p>'_static/theme_overrides.css'</p><p>]</p><p>}</p><p>else:</p><p>html_context = {</p><p>'css_files': [</p><p>'//media.readthedocs.org/css/sphinx_rtd_theme.css',</p><p>'//media.readthedocs.org/css/readthedocs-doc-embed.css',</p><p>'_static/theme_overrides.css'</p><p>]</p><p>}</p></td></tr></tbody></table>

- update html\_sidebars to the following

  - about line 126

  - This I can explain, these are things I did not want included in the side bar of my home website, you can play around with these to see if you want them included or not.

<table><tbody><tr class="odd"><td><p>html_sidebars = {</p><p>'**': [</p><p>'about.html',</p><p>'navigation.html',</p><p>'relations.html', # needs 'show_related': True theme option to display</p><p>'searchbox.html',</p><p># 'donate.html', see if I actually need this one</p><p>]</p><p>}</p></td></tr></tbody></table>

### environment.yml

This is a yml file similar, but simpler than the travis yml file. It tells sphinx/readthedocs which python modules you need to install. Here is what is in my simple example, you’ll need all dependencies for your package. (Side note - technically my example tool doesn’t use openeye, but I wanted an example that included the channels being required. This can also be a list like the dependencies section, just include any conda channel necessary for your dependencies).

<table><tbody><tr class="odd"><td><p>name: chemper</p><p>channels:</p><p>- openeye</p><p>dependencies:</p><p>- python==3.5</p><p>- openeye-toolkits</p><p>- numpydoc</p><p>- pip</p><p>- pip:</p><p>- nbsphinx</p></td></tr></tbody></table>

### .readthedocs.yml

This file is in the top directory and tells readthedocs to use conda to install your python environment. It is very short and calls your environment file:

<table><tbody><tr class="odd"><td><p>conda:</p><p>file: docs/environment.yml</p><p>python:</p><p>setup_py_install: true</p><p>version: 3.5</p><p>extra_requirements:</p><p>- tests</p><p>- docs</p></td></tr></tbody></table>

## Check your build

In the directory with your MakeFile run the following command:

|           |
|-----------|
| make html |

To see your build open the file build/html/index.html, this is not a public website yet, but you should be able to use all of your links.

## Push all these files to GitHub

Next you want to add all of these files to a branch in your github repository (this can be master, but below I include directions for how to see the build on other branches as well).

# Set Up ReadTheDocs

If you don’t own your repository, you’ll need to ask the owner (or organization admin) to give you permission in order to do these steps. As in they have to give your username permission, though if you’re on a group project you should all agree on who is creatting the doc website.

### Setup account

Go to [<span class="underline">readthedocs.io</span>](https://readthedocs.org/) and log in through github, its been a while since I did this for the first time, but I think you just say log in with github and then check a box giving it permission to access your repositories.

## Create new project on readthedocs:

- Chose import a project

> <img src="media/image5.png" style="width:4.16042in;height:2.04688in" />

- Find the repository you want to make a documentation page for and click on the “

> <img src="media/image3.png" style="width:5.86458in;height:1.4375in" />

- Assign a name and chose repository type “Git”<img src="media/image2.png" style="width:6.5in;height:3.43056in" />

  - Note this name has to be unique, that is there can’t be any other readthedocs projects with this name, it is used for your \[project\].readthedocs.io website. If your project name is available use thate, but if note you may have to come up with a variation

  - Note - For most projects the default advanced options should be fine, but they include options to add a description or a link to the projects home page and tags for your documentation. I believe these can be accessed again after creation, but I’ve never used anything except the defaults.

## Project Settings

Now we will make some small adjustments to make sure your documents are building. You can do this under Admin on the menu bar:

<img src="media/image4.png" style="width:6.5in;height:1.73611in" />

In the sections below, I have descriptions for the things you might want to change. These will not be written in order, but include the important options on the side bar:

<img src="media/image6.png" style="width:1.47396in;height:2.83667in" />

### Settings

In this section you can change the “advanced” settings we ignored when initially building the project, however, there shouldn’t be anything you HAVE to change here.

### Versions

On this menu you can chose which branchs from your project you want to have documentation built for. This is handy for testing your documentation before pushing it into the master branch. So you should select active next under that branch name:

<img src="media/image1.png" style="width:1.91667in;height:1.25in" />

Then you can chose if you want it to be public, there are also protected and private builds, but I’m not sure who can(not) see the other options…

## Trigger a build

You can force a new build on your project by going to “Builds” on the main menu and pressing the “Build Version” button.

# Check out your website

## Add Badge to your Repo<img src="media/image7.png" style="width:1.7541in;height:2.81771in" />

Like Travis and CodeCov, ReadTheDocs has a badge you can add to your repository.

On the homepage of the read the docs for your project on the right side you should see this:

If you click on the badge itself, there are options for RST, MarkDown, or HTML that will allow you to add this badge to your repo.

## Website

The website for your docs uses the name you created during setup in the form \[name\].readthedocs.io
