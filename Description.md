## Purpose
  A personal webpage to showcase examples of my work. Also, a blog to share the new technologies I am learning / implementing in the projects.

## Features
  - As a user,
    I want to be able to create posts
    so that I can share what I learned

    [] A post must have a title, purpose, project URL, image?
    [] User must be signed in before they can create a post
    [] Should incorporate TinyMCE for easy text editing
    [] Carrierwave/Fog/AWS S3 for image upload

  - As a user,
    I want to be able to edit and delete posts
    so that I can manage my portfolio

    [] Posts can be edited, updated, and deleted by only me

  - As a user,
    I want visitors to be able to contact me
    so that I can answer any questions

  - As a user,
    I want visitors to be able to leave comments on blog posts
    so that I can get feedback

    [] Use Disqus for managing comments
    [] Users will have to be logged in before submitting any comments

## Models
  **User**
    Devise

  **Post**
    title: string
    purpose: text
    project URL: string
    image: string
    date: date

## Pages
  - Homepage#index
  - Posts#index
  - Posts#show
  - Posts#edit
  - Contact#index
