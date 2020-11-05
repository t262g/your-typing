function increase () {
  const btn = document.getElementById('increase');
  btn.addEventListener('click', () => {
    const place = document.getElementById('buttons');
    const HTML = `        
      <div class="quiz-set">
        <div class="quiz-input">
          <label class="quiz-label" for="quiz_management_question">問題</label>
          <textarea class="quiz-area" placeholder="例) ゾウ" name="quiz_management[${num}][question]" id="quiz_management_${num}_question"></textarea>
        </div>
        <div class="quiz-input">
          <label class="quiz-label" for="quiz_management_answer">答え</label>
          <input class="quiz-field" placeholder="例) elephant" type="text" name="quiz_management[${num}][answer]" id="quiz_management_${num}_answer" />
        </div>
      </div>`;
    place.insertAdjacentHTML("beforebegin", HTML);
    num += 1
  });
}

let num = 5
window.addEventListener('load', increase);