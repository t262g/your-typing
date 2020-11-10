function initialize () {
  question.innerHTML = '';
  answer.value = '';
  quizSet = lists[i]
  const HTML = `${quizSet.question}`;
  question.insertAdjacentHTML('afterbegin', HTML);
}

function judge () {
  console.log(`quiz${i}実行中`);
  if (quizSet.answer === answer.value) {  
    console.log(`問題${i}正解です`);
    i++;

    if (length == i) {
      clearInterval(time);
      result();
      return;
    }

    initialize();
  }
}

function result () {
  question.innerHTML = 'クイズ終了です';
  answer.value = '';
}

function play () {
  console.log('playQuizが呼ばれました')
  const quizValue = json_quiz.value
  lists = JSON.parse(quizValue);
  length = lists.length;
  question = document.getElementById('question');
  answer = document.getElementById('answer');
  i = 0;
  
  initialize();

  time = setInterval(judge, 300);
}

window.addEventListener('load', play);
