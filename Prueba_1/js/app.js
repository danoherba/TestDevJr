document.getElementById('0').addEventListener('click',popup);
document.getElementById('1').addEventListener('click',popup);
document.getElementById('2').addEventListener('click',popup);
document.getElementById('3').addEventListener('click',popup);
document.getElementById('4').addEventListener('click',popup);
document.getElementById('5').addEventListener('click',popup);
document.getElementById('6').addEventListener('click',popup);
document.getElementById('7').addEventListener('click',popup);
document.getElementById('8').addEventListener('click',popup);
document.getElementById('9').addEventListener('click',popup);
document.getElementById('clear').addEventListener('click',clear);
document.getElementById('post').addEventListener('click',post);
document.getElementById('todos').addEventListener('click',todos);
document.getElementById('new').addEventListener('submit',newnext)

fetch('https://jsonplaceholder.typicode.com/users')
.then((response) => response.json())
.then((json) => {
  usuario=json;
  for (var i = 0; i < 10; i++) {
    document.getElementById(i).value=json[i]['id'];
  }
});
function popup(a) {
  clear();
  document.getElementById('info').hidden=false;
  document.getElementById('complemento').hidden=true;
  document.getElementById('info').value=usuario[a.toElement.id]['id'];
  document.getElementById('name').value=usuario[a.toElement.id]['name'];
  document.getElementById('username').value=usuario[a.toElement.id]['username'];
  document.getElementById('email').value=usuario[a.toElement.id]['email'];
  document.getElementById('city').value=usuario[a.toElement.id]['address']['city'];
  document.getElementById('phone').value=usuario[a.toElement.id]['phone'];
  document.getElementById('web').value=usuario[a.toElement.id]['website'];
  document.getElementById('company').value=usuario[a.toElement.id]['company']['name'];
  document.getElementById('publicaciones').value="";
}
function clear() {
  document.getElementById('name').value="";
  document.getElementById('username').value="";
  document.getElementById('email').value="";
  document.getElementById('city').value="";
  document.getElementById('phone').value="";
  document.getElementById('web').value="";
  document.getElementById('company').value="";
  document.getElementById('publicaciones').value="";
  document.getElementById('box_todos').hidden=true;
  document.getElementById('box_post').hidden=true;
  document.getElementById('complemento').hidden=true;
}



function post() {
  document.getElementById('complemento').hidden=false;
  comentario="";
  cadena="";
  publi="";
  c=document.getElementById('info').value;

  fetch('https://jsonplaceholder.typicode.com/posts/'+c)
  .then((response) => response.json())
  .then((json) => {
    cadena='User: '+json['id']+'\n'+'Publicación: '+json['title']+'\n\n';
    document.getElementById('publicaciones').value=cadena;
  });


  fetch('https://jsonplaceholder.typicode.com/posts/'+c+'/comments')
  .then((response) => response.json())
  .then((json) => {
    for (var i = (json.length-1); i >= 0; i--) {
      tmp='  name: '+json[i]['name']+'\n'+'  email: '+json[i]['email']+'\n'+'  Comentario N°'+(i+1)+': '+json[i]['body']+'\n\n';
      comentario=tmp+comentario;
      publi=cadena+comentario;
      document.getElementById('publicaciones').value=publi;
    }
  });
  document.getElementById('publicaciones').value=publi;
  document.getElementById('box_post').hidden=false;
  document.getElementById('box_todos').hidden=true;
}
function todos(a)
{
    document.getElementById('complemento').hidden=false;
  var tareas="";
  fetch('http://jsonplaceholder.typicode.com/todos')
  .then((response) => response.json())
  .then((json) => {
    contador=json.length;
    var tareas = {
        length: 0,

        addElem: function addElem(elem) {
            // obj.length is automatically incremented
            // every time an element is added.
            [].push.call(this, elem);
        }
    };
    for (var i = 0; i < contador; i++) {
      if (json[i]['userId']==document.getElementById('info').value) {
        tareas.addElem(json[i]);
      }
    }
    prueba="";
    for (var i = 0; i <tareas.length ; i++) {
      tmp='Tarea N°'+tareas[i]['id']+'\nDescripcion: '+tareas[i]['title']+'\n\n';
      prueba=tmp+prueba;
    }
    document.getElementById('tareas').value=prueba;
  });
  document.getElementById('box_post').hidden=true;
  document.getElementById('box_todos').hidden=false;
}


function newnext(e) {
  e.preventDefault()
  var title=document.getElementById('title').value
  var completed=document.getElementById('completed').value
  var userId=document.getElementById('info').value
  switch (completed) {
    case 'on':
    completed='true';
    document.getElementById('completed').value='off';
      break;
    default:
    completed='false';
      break;
  }
  fetch('http://jsonplaceholder.typicode.com/todos', {
  method: 'POST',
  body: JSON.stringify({
    title: title,
    completed: completed,
    userId: userId
  }),
  headers: {
    'Content-type': 'application/json; charset=UTF-8',
  },
})
  .then((response) => response.json())
  .then((json) => {console.log(json)
  alert( 'Se agrego el registro '+json['id']+ ' exitosamente')});
}
