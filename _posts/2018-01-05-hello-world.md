---
layout: default
title: "Hello World"
date: "2019-01-05 21:16:00 -0300"
description: "This is the first post on the blog. Trying to answer one question: why?"
---

Why would an extension have its own blog? On this quick article I try to explain it. TL;DR: I wanted a place to write about the extension and my personal blog didn't feel like the right place to do it.

<!--more-->
I want to write a bit about my motivation to build the extension and its features. Also about write how you'd write a plugin if you wanted to contribute to the project (or if you wanted to just write your plugins for yourself).

I didn't feel like my personal blog was the right place for that. As I want to start writing about this stuff (and also, how some of the features here changed the way I use Slack for the better) and probably being a little bit more vocal when launching new stuff, I created [a twitter account for it](https://twitter.com/RefinedChat). I don't want to spam the people that follow me but that are not interested in the extension.

{% header h2 | Principles %}

This extension may change a lot. I don't know where it's going, but there are some things I won't comprimise. This post is a good place to lay them down.

{% header h3 | Never ever track you or anything you do %}

No matter what. The only cookie it's setting on your browser is the one set by Cloudflare [and it has a clear purpose](https://support.cloudflare.com/hc/en-us/articles/200170156-What-does-the-Cloudflare-cfduid-cookie-do-). Neither this site or the extension collect any data about you or what you do. There's no third party services tracking your movements. No like / tweet / anything button. And the only embedded video is served using Youtube's [privacy-enhanced mode](https://support.google.com/youtube/answer/171780?hl=en).

Does it mean I don't care about how people are using the extension? nope, I care a big deal about it. But I'd rather you told me that instead of watching over your shoulder.

This also means I'm going to experiment what features to kill. I'm at a point where I'm considering killing [Reply to channel](/reply-to-channel) now that I can have [all the thread messages broadcasted](/broadcast-thread).

I don't know if people use reply to channel... I now think it's a bit impolite with people that want to use Slack with threads.

So this lack of analytics means that if you don't like something, the best thing you can do is telling me :)

{% header h3 | Users should have all the control %}

Every feature has to be easy to disable. If it's an intrusive feature, it should be disabled by default. This may end in a huge settings page. I understand that it's not optimal UX, but I don't really care. This extension is aimed at power users.

Disabling a feature should **absolutely and completely disable it**. This is crucial. As the extension is not using supported APIs (basically because they don't exist), it's tightly coupled with Slack's current implementation. When the Slack team change things, the different features may break. Giving users the ability to disable a feature would let them troubleshoot what's going on and move on with their day when something breaks.

{% header h3 | The final goal is to disappear %}

Ideally, Slack would implement this features 10 times better than what I did. Once Slack is an application that I enjoy using without nasty hacks, I'm going to be happy to kill the extension.

{% header h2 | What kind of things will I find here? %}

I have a couple articles planned... like why I think [having all the thread messages broadcasted](/broadcast-thread) is great and it would be amazing to see properly implemented by the Slack team. Or how you could write your own plugin to add to the extension.

I'd love to figure out a way users can load plugins on the fly (so that you have them locally) although that one could be a little tricky (since the extension is written in Typescript and built with grunt).

I'm also going to share some decisions I made regarding the plugins, or how I'm packaging the whole script. Just because I found them interesting (and as a reference for my future self).

You can't subscribe, or receive emails when I add new articles. Heck, you can't even tell if there are new articles on the website :P so if you're interested on them I suggest you follow [@RefinedChat](https://twitter.com/RefinedChat) on twitter.