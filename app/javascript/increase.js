if ( document.URL.match( /quizzes\/new/ ) || document.URL.match( /quizzes\/\d.*\/edit/ )
 || document.referrer.match( /quizzes\/new/ ) || document.referrer.match( /quizzes\/\d.*\/edit/ ) ) {

  function increase () {
    const place = document.getElementById("all_quiz");
    let index = place.childElementCount;
    const btn = document.getElementById('increase');
    btn.addEventListener('click', () => {
      const HTML = `        
        <div class="quiz-set">
          <div class="quiz-input">
            <label class="quiz-label" for="quiz_management_question">問題</label>
            <textarea class="quiz-area" placeholder="例) ゾウ" name="quiz_management[${index}][question]" id="quiz_management_${index}_question"></textarea>
          </div>
          <div class="quiz-input">
            <label class="quiz-label" for="quiz_management_answer">答え</label>
            <input class="quiz-field" placeholder="例) elephant" type="text" name="quiz_management[${index}][answer]" id="quiz_management_${index}_answer" />
          </div>
        </div>`;
      place.insertAdjacentHTML("beforeend", HTML);
      index += 1;
    });
  }

  window.addEventListener('load', increase);

}