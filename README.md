# baudelaire-whitespace

Some time ago, I wrote a program in the
[esoteric](https://en.wikipedia.org/wiki/Esoteric_programming_language)
programming language
[Whitespace](https://en.wikipedia.org/wiki/Whitespace_(programming_language)).
It didn't do anything useful, but even so, I thought it was a pity that
it wasn't exactly convenient to run it.

To fix that, I created a REST "web service" using AWS Lambda and API Gateway,
and also an HTML/JS client for it, so that the program can be run (and be
useless) more conveniently.

## Overview

This repository is pretty much a 1:1 replica of the repository
[baudelaire-brainfuck](https://github.com/qwhxm/baudelaire-brainfuck).
After writing the original baudelaire program in brainfuck, I later created
a Whitespace equivalent; that means that the program
[baudelaire.ws](backend/baudelaire.ws) behaves the same as
[baudelaire.b](https://github.com/qwhxm/baudelaire-brainfuck/blob/master/backend/baudelaire.b),
and as a result the AWS Lambda wrapper and the frontend clients work exactly
the same as in
[baudelaire-brainfuck](https://github.com/qwhxm/baudelaire-brainfuck).

Since everything in this repository is almost the same as in
[baudelaire-brainfuck](https://github.com/qwhxm/baudelaire-brainfuck),
you can read the description there for context and more details. I'll add just
a few notes:
* The [AWS Lambda handler](backend/baudelaire-whitespace.py) uses the same
  interpreter ([EsCo](http://esco.sourceforge.net)), which is possible because
  it supports Whitespace as well as brainfuck.
* Same as in
  [baudelaire-brainfuck](https://github.com/qwhxm/baudelaire-brainfuck), the
  program used in the Lambda function is a "minified" version stripped of
  comments. A non-minified version is available in the directory
  [extras](extras).
* The web client for baudelaire-whitespace is published at
  https://qwhxm.github.io/baudelaire-whitespace/client.html.
