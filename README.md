# CypherText

An iOS app implementing a classic **keyword cipher** — a monoalphabetic
substitution cipher from the history covered in Simon Singh's *The Code
Book*, built as a proof of concept while learning Swift.

## How it works

You pick a secret key (e.g. a name or word). The cipher alphabet starts with
that key's letters, duplicates removed, then continues alphabetically from
the letter *after* the key's last letter, skipping any letter already used
and wrapping around to `a` once it passes `z`. So the key `GIBRAN` builds a
cipher alphabet starting `g i b r a n`, then picks up right after `n` — at
`o` — runs to `z`, wraps to `a`, and skips `a`, `b`, `g`, `i`, `n`, `r`
wherever they'd otherwise repeat, filling in the rest: `o p q s t u v w x y
z c d e f h j k l m`.

Plaintext is then substituted letter-for-letter through that shifted
alphabet to encode, and reversed to decode.

## Stack

SwiftUI, no external dependencies.

## Status

Learning project / proof of concept — not actively maintained.
