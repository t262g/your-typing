function play () {
  const json = document.getElementById('json_quiz');
  if ( json != null) {
    const quizValue = json.value
    const lists = JSON.parse(quizValue);
    let index = 0;
  
    reset(lists, index);

    const time = setInterval( () => {
      const questionArea = document.getElementById('question_area');
      const quizSet = lists[index];
      const answerArea = document.getElementById("answer_area");
      const answer = document.getElementById('answer');
      const condition1 = quizSet.answer == answer.value
      const condition2 = lists.length == index + 1

      // //回答が正しかったときの問題の更新処理
      if (condition1 && !condition2) {
        index++;
        reset(lists, index);
      }
    
      // //最後の問題を回答したときの処理
      if (condition1 && condition2) {
        clearInterval(time);
        questionArea.innerHTML = 'クイズ終了です';
        answerArea.innerHTML = '';
      }
    }, 200, [lists, index, time]);
  }
}

function reset (lists, index) {
  //問題のリセット
  const questionArea = document.getElementById('question_area');
  questionArea.innerHTML = '';
  const quizSet = lists[index];
  questionArea.innerHTML = `${quizSet.question}`;

  //回答欄のリセット
  const answerArea = document.getElementById("answer_area");
  answerArea.innerHTML = '';
  answerArea.innerHTML = '<input id="answer">';
  const answer = document.getElementById('answer');
  answer.focus();
}

window.addEventListener('load', play);
