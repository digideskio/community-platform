package DDGC::Feedback::Config::Bang;
# ABSTRACT:

use strict;
use warnings;

sub feedback_title { 'I’d like to submit a new !bang.' }

sub feedback {[
  { description => "To submit new <a href='https://duckduckgo.com/bang.html'>!bangs</a> or help us fix broken !bangs, fill out the form on this page with the correct !bang: <a href='https://duckduckgo.com/newbang'>https://duckduckgo.com/newbang</a>.", type => "info", icon => "newspaper" },
]}

sub broken_bang {[
  { name => "bang", description => "The !bang that doesn’t work is", type => "text", placeholder => "e.g. !wikipedia, !so, !ebay", icon => "bang" },
  { name => "issue", description => "The issue is that", type => "textarea", placeholder => "e.g. the site returns an error, the site no longer exists", icon => "bug" },
  { name => 'email', description => "Your email (not required)", placeholder => "We'd like to get back to you, but you can leave this blank.", type => "email", icon => "inbox", optional => 1},
  { name => 'submit', description => "Send", cssclass => "fb-step--submit", icon => "mail" }
]}

1;
