function increase () {
  const btn = document.getElementById('increase');
  btn.addEventListener('click', () => {
    const place = document.getElementById('btns');
    const HTML = `        
      <div class="quiz-set">
        <div class="quiz-input">
          <label class="quiz-label" for="quiz_management_question${num}">問題</label>
          <textarea class="quiz-area" placeholder="例) ゾウ" name="quiz_management[question${num}]" id="quiz_management_question${num}"></textarea>
        </div>
        <div class="quiz-input">
          <label class="quiz-label" for="quiz_management_answer${num}">答え</label>
          <input class="quiz-field" placeholder="例) elephant" type="text" name="quiz_management[answer${num}]" id="quiz_management_answer${num}" />
        </div>
      </div>`;
    place.insertAdjacentHTML("beforebegin", HTML);
    num += 1
  });
}

let num = 6
window.addEventListener('load', increase);