---
layout: default
title: "Slack Threads: FTFY"
date: "2019-02-10 20:16:00 -0300"
description: "Slack threads are great. Especially if you want siloed conversations."
card_content: "Have you ever missed a conversation on Slack because it was on a thread? Refined's Smart Threads can prevent that from happening again."
---

Especially in a team with members on different timezones, keeping up to date with conversations that happen in threads is really hard. You have to scroll up, click on the conversation links and read them on that 2nd pane. And if people reply to a really old message... good luck finding that out!

<!--more-->
Our team moved from our own chat (aka bonfire, [the one used in public Stack Overflow](https://chat.stackoverflow.com/)) to Slack and that didn't make me happy. There were a bunch of things I missed (that's why [I originally built BetterSlack](https://g3rv4.com/2018/08/betterslack), now Refined).

My main complaint with Slack is: it favors private conversations. DMs are the clear example of that... but it doesn't stop just there. You also have private channels. And people can create public channels to discuss stuff, but if you don't know they exist, you're not aware of people discussing things you could be interested on. These features favor private conversations and there's nothing I can do with them... since they're features of Slack.

But assuming you're on a channel and all your team members are there... where most of the conversations you're insterested on happen, there's still one way siloed conversations still take place: threads.

{% header h2 | What is wrong with threads? %}

They hide conversations. In a way you can't easily tell (if it were, they wouldn't be hidden!)

Imagine you work on a team where you have members in different timezones. All the team members use a slack channel. You start your day and join the channel to see what has happened while you were sleeping.

Slack adds a convenient indicator of how many messages unread you have (and a red line so that you can easily scroll up to that point). So you start reading the conversations and every time there's a thread, you click on the link to expand it. Is that enough to see what people have said? **no**! what if people kept on talking on a thread that was started above the oldest unread message? YOU CAN'T TELL!

But this also happens as you go through your day... I'm not 100% of my time checking Slack, but let's assume I am. I'm only watching the conversation on the team, so I'm up to date... right? **no**! If somebody chooses to start a thread on an old message, I CAN'T TELL! So I end up missing a conversation that may have been interesting.

{% header h2 | Is there a better way? %}

In my opinion, the way our Stack Overflow chat works is ideal... people reply to messages and they all appear on the main channel. When you hover a message that's a reply, the message it's being replied to is highlighted.

Everyone is in the loop of every conversation. Could this be too noisy? It depends on your team's culture. On my team, people always talk about things I find interesting to know about.

{% header h2 | Can you do that on Slack? %}

Well, unfortunately... not if you use it as is. But... with Refined you can enable [Smart Threads](/smart-threads) on Slack. Smart Threads do exactly that: they broadcast every message to the main channel and have the hover logic so that all the messages in the thread are highlighted.

Broadcasted threaded messages are... a bit too noisy for me, so I removed a couple elements from them as well.

Here you can see how it looks:
![](/assets/images/smartThreads.gif)

{% header h2 | Alright, I'd like to try it out! %}

Nice! You can install it on [Chrome](https://chrome.google.com/webstore/detail/refined-a-tool-for-slack/mgicdolhkaeefgmbhlohfjoafacijbfh), [Firefox](https://addons.mozilla.org/en-US/firefox/addon/refined-a-tool-for-slack/) or [Opera](/opera).

As with any extension, make sure you understand the [security implications of using a browser extension](/security) and consider [building it from source code](https://github.com/g3rv4/Refined) if you want to avoid me installing stuff on your browser (if you go that route, you may want to follow [@RefinedChat on twitter](https://twitter.com/RefinedChat) to learn about updates).