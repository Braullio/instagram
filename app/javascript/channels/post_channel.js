import consumer from "./consumer"

consumer.subscriptions.create("PostChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received({ post_created }) {
    const template = document.createElement('template');
    template.innerHTML = post_created;

    const post = document.querySelector('.posts');
    post.prepend(template.content.firstChild);
  }
});
