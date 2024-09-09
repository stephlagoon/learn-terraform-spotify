# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

data "spotify_track" "fragment" {
  url = "https://open.spotify.com/track/3NzN1Q9op0BMF4Z9Yw8qKs?si=61568f4c0ca54eb0"
}

data "spotify_track" "moth_like_stars" {
  url = "https://open.spotify.com/track/3O3CPWyGIdqYrA4jlZQpot?si=b7e32e894aa8489b"
}

data "spotify_track" "elena_and_lila" {
  url = "https://open.spotify.com/track/2kNm1MjQKmxZwoKgS5AASK?si=ab156c74acce41d7"
}

data "spotify_track" "our_reflection" {
  url = "https://open.spotify.com/track/1zNWJd48ZzVBtBnLorwFS5?si=fc524570ec7d49f7"
}

data "spotify_track" "on_the_nature_of_daylight" {
  url = "https://open.spotify.com/track/56oReVXIfUO9xkX7pHmEU0?si=fbcdaca859044f8a"
}

data "spotify_track" "dream1" {
  url = "https://open.spotify.com/track/1A8qD0Ygjzsby5OmXh1PTa?si=6dbae47a45dd44dc"
}

data "spotify_track" "november" {
  url = "https://open.spotify.com/track/2NGhKPZdZk2pPZinWphTzh?si=e7ca436ee35b4841"
}

data "spotify_track" "i_will_not_forget_you" {
  url = "https://open.spotify.com/track/6zacWNZy18tMVJo9yJ69gL?si=b573828fc02744d4"
} 

data "spotify_track" "to_the_stars" {
  url = "https://open.spotify.com/track/2UcUL4jytfVpW0jSXi3Ggi?si=f10d2d59dbe7474c"
} 


resource "spotify_playlist" "playlist" {
  name        = "Steph's Terraform Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
    data.spotify_track.fragment.id,
    data.spotify_track.moth_like_stars.id,
    data.spotify_track.elena_and_lila.id,
    data.spotify_track.our_reflection.id,
    data.spotify_track.on_the_nature_of_daylight.id,
    data.spotify_track.dream1.id,
    data.spotify_track.november.id,
    data.spotify_track.i_will_not_forget_you.id,
    data.spotify_track.to_the_stars.id,
    
  ]
}
