# Quick README

## Contents

This app stores the Vote data for Jokes gleaned from the [CanIHazDadJoke API](https://icanhazdadjoke.com/api).

## Models

- Joke: stores the can_i_haz_id of the Joke; keeps a counter of votes
- Vote: references a Joke, has a (currently static) +/- point value

