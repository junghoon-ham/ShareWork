#사용자 초기화
User.destroy_all

#사용자 추가
User.create(name: "함정훈", email: "hampsen@likelion.org", phone: "01050493639", password: "111111", password_confirmation: "111111" )