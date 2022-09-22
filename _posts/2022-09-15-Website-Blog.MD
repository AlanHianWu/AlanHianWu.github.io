---
layout: post
title:  "Website Blog"
categories: Blog
Blog: true
---

---
# Updates On This Project 
--- 
#### Sep 21 2022
Just nearly no work done on this last week, just minor fixes and setup for some of my project due to me studying for some coding tests.

---
##### Sep 15 2022
Seems like github pages only allows whitelisted gems, so making a automatically updating section will need more work. So now all I can do is manually change the dates...

Night
Been messing around with ocr on japanese and chinese character with the tesseract project, the accuracy of it is insane; that and perparing on the side for an online assessment coming up soon. Always been my plan to create that online IDE and upload these might as well get seriously started.

---
##### Sep 13 2022
Spend the better part of yesterday learning bits about webassembly, and testing/ implemeting local file systems on the website, I am thinking that using the indexedDB, I can use javascript logic and actually have a great terminal simulator, not mentioning, webassem can just staright up compile an actual terminal and plot it into the browser.

Runing into some issues though, jekyll's files systems might be making it difficult to implement service workers for caching, keep geting this scope error, from what I have found, seems like the service worker file must be in the same dir of the html, I might be wrong though, I'll have to figure this out today, that said, when I do have this problem sorted, I'll have control over all types of file systems in the browser now. 
I did expect to run into memory limits since all the websites states that browsers on average only gives you 5-10MB of storage, but to my surprise, modern browser give you gigs of memory to mess with (havn't tested it out yet) if you know what you'll doing, with chrome giving you a percentage of remaining disk space.

#### Noon update: 
Fixed the service work error, seems like it has to be at the root of the site and typeScript's wrapping on the generated javaScript was the culprit, gonna work around it a bit to see if I can get typeScript working on it.

Fixed up the issues related to caching now, gonna tidy up the project [Local File System] so you can click on things and see what's happening, I'll then flesh out the local storage script so I can use it in future projects (naming the terminal and webIDE one for now).


---
##### Sep 12 2022
I was thinking of fixing up the dark mode button, that was this first thing I worked on, on this website and it does not have a good css file yet, another more pressing matter is the fact that my darkmode is not persistence, looking into how people do it, seems like everyone uses cookies to store the state of dark mode, so I was about to get started on that, but this other project keeped knocking on the back of my head and that is web-terminal and webIDE, the IDE still needs the text editor finished before any DE can be built (I was planing to just link it up with my pi zero use apache flask node what ever, but man the pi zero is slow) and I need the terminal to do terminal things, I racked my head around for a few days now and have a basic Idea of how it will work, (looking into webassemly can be a great solution) there are tons of projects out there that can simulate a desktop so I'll need to grab the knowledge needed for these projects from there. Any how, late last night I wanted to fix up the darkmode button booted up the project and found out that I'll have to fix my typescript config and refactor some things since now I want to use typescript moving forward and darkmode was written in coffeScript, future me will solve it, says past me . . . . . .


---

##### Sep 11 2022
Just finished a small exercise with cube css, I wanted to know how it was done, and also how keyframes work with css.
Plan on going back to WebIDE for a bit so I can show the code for the cube, and other projects I have and plan on doing;
or I plan on expanding the cube excerise to make a Tesseract with just css.

making the cube interactive is on the menue aswell since now looking at it, I want to be able to rotate it manually.

---

##### Sep 10 2022
Will be moving over the typeScript soon, I have it installed on the website now, coffeeScript is nice and all, but not that great in terms of community support compared to others.

---


##### Sep 9 2022
Bit of a slow start today

I have the basics of the text editor now, I'll need some syntax highlighting, servers and some functions to extract the text and format it.

I was thinking it would be nice to have both the web terminal and text editor together, need to look into that.

JavaScript through the FilesAPI can create and edit files in a VM, it would be nice to acess that through the web terminal.

coffeeScript was fun and all but I think I should try out typeScript.


---
##### Sep 8 2022

This website use's jekyll, I was thinking of using other things like Reactjs, vuejs etc. but since everything was already set up on github and I have very little experience working on UI design and frontend stuff I ended up working with jekyll.

but since all jekyll does is manage the files, I am free to do what ever I want which is how I expected most every other web frame work preforms just layers and layers of convience stacked on top of the core tech of HTML, CSS & JAVASCRIPT plus some SQL, but since I have only worked with pure javascript, html, css and some bits of vuejs and reactjs from colloge I can't really give a difinative answer.

So far I am not very happy with how the website looks, so I'll be working on it constantly, some things I'll have to do, like search bars, nav bars, and more animations so far there isn't much stuff on here for nav and search so I'll leave that on the back burner for now, but man I'll have the brain strom some more on the look.

I'll need to work on the dark mode some more aswell sincce right now all it does is invert the colours of the background and text, should be simple enough just add more css.

I am still set on making the web terminal the center piece of the web site but stuck on how it will look

---