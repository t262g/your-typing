function postComment () {
  const json_info = document.getElementById('json_info');
  if (json_info != null) {
    const submit = document.getElementById('submit_btn');
    submit.addEventListener('click', (e) => {
      e.preventDefault();
      const formData = new FormData(document.getElementById('new_comment'));
      const XHR = new XMLHttpRequest();
      const value = json_info.value;
      const info = JSON.parse(value);
      XHR.open('POST', `/quizzes/${ info[1] }/comments`, true);
      XHR.responseType = 'json';
      XHR.send(formData);
      XHR.onload = () => {
        if (XHR.status != 200) {
          alert(`Error ${XHR.status}: ${XHR.statusText}`);
          return null;
        }
        const comment = XHR.response.comment;
        const commentList = document.getElementById('comment_list');
        const commentText = document.getElementById('comment_content');
        const HTML = `
        <div class="comment">
          <a href="/users/${ comment.user_id }">${ info[0] }</a>
          <div class="comment-content">
            ${ comment.content }
          </div>
        </div>`;
        commentList.insertAdjacentHTML('afterbegin', HTML);
        commentText.value = "";
      };
    });
  }
}

window.addEventListener('load', postComment);