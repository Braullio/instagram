const token = document.querySelector("meta[name='csrf-token']").content;
const headers = { 'Content-Type': 'application/json', 'X-CSRF-Token': token };

document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.actions .like').forEach(button => {
    button.addEventListener('click', like);
  });
});

function like(event) {
  const actionElement = event.target.closest('.action');

  fetch('/likes', {
    method: 'POST',
    headers,
    body: JSON.stringify({ like: { post_id: actionElement.dataset.postId } })
  })  
    .then(response => response.json())
    .then(json => console.log(json))
    .catch(error => console.log('parsing failed: ', error));
}