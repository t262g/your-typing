function initialize () {
  question.innerHTML = '';
  answer.value = '';
  quizSet = lists[i]
  const HTML = `${quizSet.question}`;
  question.insertAdjacentHTML('afterbegin', HTML);
}

function judge () {
  if (quizSet.answer === answer.value) {  
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
  const json = document.getElementById('json_quiz');
  if ( json != null) {
    const quizValue = json.value
    lists = JSON.parse(quizValue);
    length = lists.length;
    question = document.getElementById('question');
    answer = document.getElementById('answer');
    i = 0;
    
    initialize();

    time = setInterval(judge, 300);
  }
}

window.addEventListener('load', play);
